import 'package:ejercicio_semana11/providers/scan_provider.dart';
import 'package:ejercicio_semana11/screens/home_screen.dart';
import 'package:ejercicio_semana11/screens/maps_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ScanProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'home',
          routes: {
            'home': (BuildContext context) => HomeScreen(),
            'maps': (BuildContext context) => MapSample()
          },
          theme: ThemeData.light()),
    );
  }
}
