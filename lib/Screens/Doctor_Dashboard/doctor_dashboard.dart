import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:uponly_doc_plus/Screens/Doctor_Dashboard/appointment.dart';
import 'package:uponly_doc_plus/Screens/Doctor_Dashboard/my_patient.dart';
import 'my_header_drawer.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({super.key});

  @override
  State<DoctorDashboard> createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.place),
              Text('Navi Mumbai'),
              Icon(Icons.arrow_drop_down),
              // Icon 2
            ],
          ),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cardDashboard1(
              cardTitle: 'Free Consultation with An\nexpert Doctor',
              cardSubTitle:
                  '    One to one audio video call\n    with the recommended\n    doctors just few clicks away',
              cardImage: 'assets/doctor_1.png',
              g1Color: Colors.purple,
              g2Color: Color.fromARGB(255, 112, 241, 116),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(MyPatient());
                  },
                  child: CardDashboard(
                    cardText: 'My Patient',
                    cardImage: 'assets/dashboard_images/my_patient_icon.png',
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    Get.to(Appointment());
                  }),
                  child: CardDashboard(
                    cardText: 'Appointment',
                    cardImage: 'assets/dashboard_images/appointment_icon.png',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                CardDashboard(
                  cardText: 'Profile',
                  cardImage: 'assets/dashboard_images/profile_icon.png',
                ),
                CardDashboard(
                  cardText: 'My Calendar',
                  cardImage: 'assets/dashboard_images/my_calender.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget CardDashboard({cardText, cardImage}) {
  return Container(
    width: 200,
    child: Card(
      shadowColor: Colors.grey.shade700,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            cardImage,
            height: 140,
            width: 100,
          ),
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(cardText),
          ),
        ],
      ),
    ),
  );
}

Widget cardDashboard1({cardTitle, cardSubTitle, cardImage, g1Color, g2Color}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(
      width: 720,
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [g1Color, g2Color],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                    Text(
                      cardSubTitle,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            cardImage,
            height: 140,
            width: 100,
          ),
        ],
      ),
    ),
  );
}

Widget MyDrawerList() {
  return Container(
    padding: EdgeInsets.only(top: 10),
    child: Column(
      children: [
        DrawerItem(drawerItemIcon: Icons.person, drawerItemText: 'Account'),
        DrawerItem(drawerItemIcon: Icons.chat, drawerItemText: 'Chat'),
        DrawerItem(drawerItemIcon: Icons.share, drawerItemText: 'Share'),
        // DrawerItem(drawerItemIcon: Icons.person, drawerItemText: 'Person'),
      ],
    ),
  );
}

Widget DrawerItem({drawerItemIcon, drawerItemText}) {
  return Container(
    child: Material(
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 12),
              child: Icon(
                drawerItemIcon,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 12),
              child: Text(
                drawerItemText,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
