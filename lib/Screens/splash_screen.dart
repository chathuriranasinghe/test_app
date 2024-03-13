import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app/Screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_alarm,
                    size: 120,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('My Alarm',
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:
                  Text('From Android', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
