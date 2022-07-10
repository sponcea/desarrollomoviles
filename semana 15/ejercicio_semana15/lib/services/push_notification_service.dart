import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging mensaje = FirebaseMessaging.instance;
  static String? token;

  //Implementamos el stream para recibir el flujo del mensaje
  static StreamController<String> _msjStream = new StreamController.broadcast();
  static Stream<String> get msjStream => _msjStream.stream;

  static Future backgroundHandler(RemoteMessage mensaje) async {
    print('App en Background: ${mensaje.messageId}');
    //Aca el _msjStream podria cambiar de estado
    print(mensaje.data);
    _msjStream.add(mensaje.data['userid'] ?? 'no tiene userid');
  }

  static Future foregroundHandler(RemoteMessage mensaje) async {
    print('App en Foreground: ${mensaje.messageId}');
    print(mensaje.data);
    _msjStream.add(mensaje.data['userid'] ?? 'no tiene userid');
  }

  static Future openAppHandler(RemoteMessage mensaje) async {
    print('Abriendo app desde background: ${mensaje.messageId}');
    print(mensaje.data);
    _msjStream.add(mensaje.data['userid'] ?? 'no tiene userid');
  }

  static cargarFirebaseApp() async {
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print(token);

    //Implementamos los manejadores (handlers) para que reciban las notificaciones
    FirebaseMessaging.onBackgroundMessage(backgroundHandler);
    FirebaseMessaging.onMessage.listen(foregroundHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(openAppHandler);
  }

  static closeStream() {
    _msjStream.close();
  }
}
