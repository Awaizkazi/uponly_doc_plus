import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'clinical_points.dart';
import 'find_trusted.dart';

class DoctorsHelpling extends StatelessWidget {
  const DoctorsHelpling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Cards(
              img: 'assets/doctor_helpline.png',
              head1: "Doctor's Helpline",
              head2:
                  '      Factors affecting the\n doctor- patient relationship\n can be patient-dependent,\n provider-dependent health\n system-dependent,or due to\npatient-provider msimatch'),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 50,
            ),
            child: SizedBox(
              width: 320,
              height: 47,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(ClinicalPoints());
                },
                child: Text(
                  'Next',
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
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 50,
            ),
            child: SizedBox(
              width: 320,
              height: 47,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    width: 2,
                    color: Colors.purple,
                  ), //border width and color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
