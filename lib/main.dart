import 'package:flutter/material.dart';
import 'package:smart_energy_meter/views/home_Screen.dart';
import 'package:smart_energy_meter/views/login_screen.dart';
import 'package:smart_energy_meter/views/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/welcome_page': (context) => const WelcomePage(),
        '/login_page': (context) => const LoginPage(),
        '/home_page': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Smart Energy Meter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}
