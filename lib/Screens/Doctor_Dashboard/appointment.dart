import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Appointment'),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: Card(
            child: ListView(
              children: [
                appointmentCard(
                  name: 'Karan',
                  age: 22,
                  Symptoms: 'Nothing',
                  mobileNo: 8258786756,
                  appointmentDate: '28-08-22',
                  height: '114cm',
                  weight: '57kg',
                ),
                appointmentCard(
                  name: 'Chaitrali',
                  age: 22,
                  Symptoms: 'Nothing',
                  mobileNo: 8989786549,
                  appointmentDate: '24-08-22',
                  height: '114cm',
                  weight: '56kg',
                ),
                appointmentCard(
                  name: 'Shilpa Patil',
                  age: 22,
                  Symptoms: 'Nothing',
                  mobileNo: 8258786756,
                  appointmentDate: '22-08-22',
                  height: '114cm',
                  weight: '55kg',
                ),
                appointmentCard(
                  name: 'Abhishek',
                  age: 22,
                  Symptoms: 'Nothing',
                  mobileNo: 9021657438,
                  appointmentDate: '28-08-22',
                  height: '114cm',
                  weight: '57kg',
                ),
                appointmentCard(
                  name: 'Karan',
                  age: 22,
                  Symptoms: 'Nothing',
                  mobileNo: 8258786756,
                  appointmentDate: '28-08-22',
                  height: '114cm',
                  weight: '57kg',
                ),
                appointmentCard(
                  name: 'Karan',
                  age: 22,
                  Symptoms: 'Nothing',
                  mobileNo: 8258786756,
                  appointmentDate: '28-08-22',
                  height: '114cm',
                  weight: '57kg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appointmentCard(
      {name, age, Symptoms, mobileNo, appointmentDate, height, weight}) {
    return Container(
      width: 700,
      height: 230,
      child: Card(
        shadowColor: Colors.grey,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Name :  $name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Symptoms :\n $Symptoms',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 40, left: 10),
                      child: Text(
                        'Appointment Date :\n $appointmentDate',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 70),
                      child: Text(
                        'Age : $age',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 50),
                      child: Text(
                        'Mobile no :\n$mobileNo',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 10),
                          child: Text(
                            'Height : \n$height',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 10),
                          child: Text(
                            'Weight : \n$weight',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Decline',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Accept',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
