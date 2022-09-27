import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/PageViews/doctor_helpline.dart';

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
          Cards(
            img: 'assets/find_trusted.jpeg',
            head1: 'Clinical points',
            head2:
                '   The doctor-patient relationship\n  involves vulnerability and trust,\n It is one of the most moving and\n   meaningful experience shared\n by human beings. However, this\n relatinship and the encounters that\n flow from it are not always perfect.',
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

Widget Cards({img, head1, head2}) {
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
            Image.asset(img),
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
