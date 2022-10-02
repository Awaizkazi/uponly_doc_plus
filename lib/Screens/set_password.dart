import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uponly_doc_plus/Screens/otp_screen.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.green,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 60),
            child: Container(
              width: 220,
              height: 200,
              child: Image.asset('assets/sign_in.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.4, left: 40),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Set Password',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Please create a secure password including the following criteria below.',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 15,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0, right: 18),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              // contentPadding: ,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            width: 280,
                            height: 47,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(OTPScreen());
                              },
                              child: Text(
                                'Set Password',
                                style: GoogleFonts.robotoSerif(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                backgroundColor: Color.fromARGB(255, 83, 4, 97),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
