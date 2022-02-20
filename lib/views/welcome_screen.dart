import 'dart:async';

import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //-> timer for launching screen after seconds
  Future<Timer> loadTimer() async {
    return Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/login_page');
    });
  }
@override
  void initState() {
  loadTimer();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: welcomeWidget(context),
    );
  }

  //---------------------------------Welcome Widget-----------------------------------
  Widget welcomeWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageBackground(context),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const Text(
          'Smart Energy Meter',
          style: TextStyle(fontSize: 25.0, color: Colors.blue),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        const CircularProgressIndicator(),
      ],
    );
  }

  //----------------------------------Image Background--------------------------------
  Widget imageBackground(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage('assets/images/logo.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}
