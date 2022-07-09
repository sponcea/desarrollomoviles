import 'package:ejercicio_semana15/screens/home_screen.dart';
import 'package:ejercicio_semana15/services/push_notification_service.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationService.cargarFirebaseApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    PushNotificationService.msjStream.listen((msj) {
      print('Llego este mensaje: ${msj}');
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {'home': (context) => HomeScreen()},
    );
  }
}
