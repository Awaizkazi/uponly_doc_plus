import 'package:flutter/material.dart';

class DoctorsHelpling extends StatelessWidget {
  const DoctorsHelpling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Cards('assets/doctor_helpline.png', "Doctor's Helpline",
              '      Factors affecting the\n doctor- patient relationship\n can be patient-dependent,\n provider-dependent health\n system-dependent,or due to\npatient-provider msimatch'),
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
