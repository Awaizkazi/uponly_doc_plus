import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'PageViews/find_trusted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Get.to(FindTrusted()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg_img__splash_screen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130, top: 10),
                child: Container(
                  child: Text(
                    'Welcome \n       to',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 130),
                child: Container(
                  width: 150,
                  height: 130,
                  child: Image.asset('assets/uponly_logo.png'),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                margin: EdgeInsets.only(top: 250, left: 50),
                child: Image.asset('assets/doctor_1.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
