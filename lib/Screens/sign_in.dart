import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uponly_doc_plus/Screens/PageViews/clinical_points.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.green,),
          onPressed: () {
            Get.to(ClinicalPoints());
          },
        ),
      ),
    );
  }
}
