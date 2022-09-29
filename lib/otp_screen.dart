import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/Doctor_Dashboard/doctor_dashboard.dart';
import 'package:uponly_doc_plus/Screens/sign_up.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.green,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              width: 300,
              height: 200,
              child: Image.asset('assets/sign_in.png'),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 130),
              child: Text(
                'Confirmation code',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Please enter verification code you've\n                         received",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                "8978365721",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Text(
                "Enter Verification code",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Confirm'),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
