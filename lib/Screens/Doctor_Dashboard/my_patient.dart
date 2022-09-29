import 'package:flutter/material.dart';

class MyPatient extends StatefulWidget {
  const MyPatient({super.key});

  @override
  State<MyPatient> createState() => _MyPatientState();
}

class _MyPatientState extends State<MyPatient> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Card(
            child: Column(
              children: [
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cards({mainIcon, name, age, mobileNumber, icon1, icon2}) {
    return Container(
      child: Row(
        children: [
          Icon(
            mainIcon,
            size: 25,
          ),
          Text(name),
          Text(age.toString()),
          Text(mobileNumber.toString()),
          Icon(icon1),
          Icon(icon2),
        ],
      ),
    );
  }
}
