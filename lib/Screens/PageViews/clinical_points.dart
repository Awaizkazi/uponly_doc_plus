import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/PageViews/doctor_helpline.dart';
import 'package:uponly_doc_plus/Screens/PageViews/find_trusted.dart';
import 'package:uponly_doc_plus/Screens/sign_in.dart';

class ClinicalPoints extends StatelessWidget {
  const ClinicalPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Img , Heading 1 , Heading 2
          Cards(
            img: 'assets/clinical_points_1.jpeg',
            head1: 'Clinical Points',
            head2:
                'The doctor-patient relationship\ninvolves vulnerability and turst.\nIt is one of the most moving and\n meaningful experiences shared\nby human beings. However,this\nrelationship and the encounters that\nflow from it are not always perfect.',
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
              left: 50,
            ),
            child: SizedBox(
              width: 320,
              height: 47,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SignIn());
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
