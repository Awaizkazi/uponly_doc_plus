import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'clinical_points.dart';

class DoctorsHelpling extends StatelessWidget {
  const DoctorsHelpling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Cards('assets/doctor_helpline.png', "Doctor's Helpline",
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

Widget Cards(img, head1, head2) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 30),
    child: Container(
      height: 500,
      width: 360,
      child: Card(
        shadowColor: Colors.grey,
        elevation: 10,
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(img),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                head1,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                head2,
                style: TextStyle(
                  color: Colors.grey[600],
                  wordSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
