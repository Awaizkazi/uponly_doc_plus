import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/Doctor_Dashboard/doctor_dashboard.dart';
import 'package:uponly_doc_plus/Screens/sign_up.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

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
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Text(
                "Enter Verification code",
                style: TextStyle(fontSize: 15, wordSpacing: 2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260),
            child: Align(
              child: OtpTextField(
                fieldWidth: 55,
                numberOfFields: 4,
                borderColor: Colors.green,
                enabledBorderColor: Colors.grey.shade600,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 400),
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Confirm',
                    style: TextStyle(fontSize: 20, letterSpacing: 1),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 57, 2, 66),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Text(
                "Resend Code",
                style: TextStyle(
                  fontSize: 15,
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
