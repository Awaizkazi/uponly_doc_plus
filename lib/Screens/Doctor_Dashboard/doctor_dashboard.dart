import 'package:flutter/material.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({super.key});

  @override
  State<DoctorDashboard> createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CardDashboard(cardIcon: Icons.person, cardText: 'My Patient'),
              CardDashboard(cardIcon: Icons.person, cardText: 'Appointment'),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              CardDashboard(cardIcon: Icons.person, cardText: 'Profile'),
              CardDashboard(cardIcon: Icons.person, cardText: 'Calendar'),
            ],
          ),
        ],
      ),
    );
  }
}

Widget CardDashboard({cardIcon, cardText}) {
  return Container(
    width: 200,
    child: Card(
      shadowColor: Colors.grey.shade700,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: ((bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Colors.purple,
                  ],
                ).createShader(bounds)),
            child: (Icon(cardIcon, size: 150)),
          ),
          Text(cardText),
        ],
      ),
    ),
  );
}
