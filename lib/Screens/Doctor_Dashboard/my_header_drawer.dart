import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/doctor_helpline.png',
                    ),
                    backgroundColor: Colors.transparent,
                    // minRadius: 10.0,
                    // maxRadius: 50,
                    radius: 35,
                  ),
                ),
                Text(
                  '  Kazi Awaiz',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Id -1234',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
