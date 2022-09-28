import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uponly_doc_plus/Screens/PageViews/clinical_points.dart';
import 'package:uponly_doc_plus/Screens/PageViews/doctor_helpline.dart';
import 'package:uponly_doc_plus/Screens/PageViews/find_trusted.dart';

class PageViews extends StatelessWidget {
  // Contorller to keep track of which page we're on
  final _controller = PageController();
  // Keep track of if we are on the last page
  bool onLastPage = false;
  PageViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              FindTrusted(),
              DoctorsHelpling(),
              ClinicalPoints(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: const Alignment(0, 0.6),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ScrollingDotsEffect(
                activeDotColor: Colors.green,
                spacing: 10,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ],
      ),
      // Dot Indicator
    );
  }
}
