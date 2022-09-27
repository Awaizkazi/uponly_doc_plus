import 'package:flutter/material.dart';

class FindTrusted extends StatelessWidget {
  const FindTrusted({super.key});

  @override
  Widget build(BuildContext context) {
    // Contorller to keep track of which page we're on
    PageController _controller = PageController();
    // Keep track of if we are on the last page
    bool onLastPage = false;
    return Scaffold(
      body: Column(
        children: [
          Cards(),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 50,
            ),
            child: SizedBox(
              width: 320,
              height: 47,
              child: ElevatedButton(
                onPressed: () {},
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

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
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
              Image.asset('assets/find_trusted.jpeg'),
              Text(
                'Find Trusted',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Trust, knowledge, regard, and loyalty\n  are the 4 elements that form the\n doctor-patient relationship, and the\n    nature of this relationship has an \n        impact on patient outcomes.',
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
}