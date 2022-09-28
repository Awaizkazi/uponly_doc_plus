import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/PageViews/doctor_helpline.dart';
import 'package:uponly_doc_plus/Screens/PageViews/find_trusted.dart';

class ClinicalPoints extends StatelessWidget {
  const ClinicalPoints({super.key});

  @override
  Widget build(BuildContext context) {
    // Contorller to keep track of which page we're on
    PageController _controller = PageController();
    // Keep track of if we are on the last page
    bool onLastPage = false;
    return Scaffold(
      body: Column(
        children: [
          // Img , Heading 1 , Heading 2
         Cards(),
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
                  // Get.to(DoctorsHelpling());
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
