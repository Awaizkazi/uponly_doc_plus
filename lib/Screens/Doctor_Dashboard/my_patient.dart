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
          title: Text('My Patient'),
          centerTitle: true,
        ),
        body: Container(
          child: Card(
            child: ListView(
              children: [
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
                cards(
                    mainIcon: Icons.person,
                    name: 'Kazi Awaiz',
                    age: 18,
                    mobileNumber: 9897653672,
                    icon1: Icons.call,
                    icon2: Icons.message),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cards({mainIcon, name, age, mobileNumber, icon1, icon2}) {
    return Container(
      width: 700,
      height: 120,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.grey.shade600,
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              mainIcon,
              size: 90,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name :  $name',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                Text(
                  'Age : $age'.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
                Text(
                  'Mobile Number : \n$mobileNumber'.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon1,
                size: 35,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon2,
                size: 35,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
