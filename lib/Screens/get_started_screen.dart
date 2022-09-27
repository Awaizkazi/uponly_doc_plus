import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset('assets/get_started.png'),
            Text(
              'Find Trusted',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Contrary to popular belief, Lorem Ipsum is\n not simply random text. It has roots in a\n            piece of it over 2000 years old.',
              style: TextStyle(
                color: Colors.grey[600],
                wordSpacing: 4,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 320,
              height: 47,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  backgroundColor: Colors.purple,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: Text(
                'Skip',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
