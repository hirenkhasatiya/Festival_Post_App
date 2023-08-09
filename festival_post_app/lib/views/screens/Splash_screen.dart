import 'dart:async';
import 'package:festival_post_app/Utils/Color_utils.dart';
import 'package:festival_post_app/Utils/route_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ChangePage() {
    Timer.periodic(
      Duration(seconds: 4),
      (timer) {
        Navigator.of(context).pushReplacementNamed(MyRoutes.HomePage);
        timer.cancel();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    ChangePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 4,
              ),
              Text(
                "Festival Post",
                style: TextStyle(
                  color: Mybg,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              CircularProgressIndicator(
                color: Mybg,
              ),
              const Spacer(
                flex: 3,
              )
            ],
          )),
      backgroundColor: Colors.white,
    );
  }
}
