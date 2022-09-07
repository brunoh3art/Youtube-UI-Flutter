import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screens/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]); // Device aplication portrait default
    return MaterialApp(
      title: 'Youtube UI Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.white)),
      home: const NavScreen(),
    );
  }
}
