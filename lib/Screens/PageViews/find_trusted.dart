import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/PageViews/doctor_helpline.dart';

class FindTrusted extends StatelessWidget {
  const FindTrusted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Img , Heading 1 , Heading 2
          Cards(
            img: 'assets/find_trusted.jpeg',
            head1: 'Find Trusted',
            head2:
                'Trust, knowledge, regard, and loyalty\n  are the 4 elements that form the\n doctor-patient relationship, and the\n    nature of this relationship has an \n        impact on patient outcomes.',
          ),
          SizedBox(
            height: 10,
          ),
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
                  // Get.to(DoctorsHelpling());
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
                  'SKIP',
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

Widget Cards({img, head1, head2}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 30),
    child: Container(
      height: 500,
      width: 360,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadowColor: Colors.grey,
        elevation: 10,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child:
                  Container(width: 200, height: 200, child: Image.asset(img)),
            ),
            Text(
              head1,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                head2,
                style: TextStyle(
                  wordSpacing: 2,
                  fontSize: 18,
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
