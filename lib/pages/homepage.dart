// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_dashboard/constant/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var backgroundcolor = const Color.fromRGBO(30, 29, 42, 4);
  Color navbar = const Color.fromRGBO(37, 39, 54, 1);
  Color cardColor = Color.fromARGB(255, 45, 47, 56);
  Color hydrationlevelcolor = const Color.fromRGBO(1, 119, 251, 1);
  Color patienttodaycolor = const Color.fromRGBO(46, 48, 62, 1);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(30, 29, 42, 4),
      body: SingleChildScrollView(
        child: SizedBox(
          // width: size.width,
          child: Column(
            children: [
              /* ----------------------------- navigation bar ----------------------------- */
              AppBar(
                backgroundColor: Colors.transparent,
                leading: Icon(Icons.vignette_rounded),
                title: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: navbar,
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("overview", style: TextStyle(fontSize: 14)),
                      Text("Health", style: TextStyle(fontSize: 14)),
                      Text("Health", style: TextStyle(fontSize: 14)),
                      Text("Health", style: TextStyle(fontSize: 14)),
                      Text("Health", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
                actions: [
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: navbar,
                      child: Icon(Icons.search)),
                  Container(
                    decoration: BoxDecoration(
                        color: navbar,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: const [
                        Icon(Icons.notification_important_outlined),
                        Icon(Icons.error_outline_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: navbar,
                      ),
                      title: Text(
                        'Nabin Yadav',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(
                        'Good morning!!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
                centerTitle: true,
                elevation: 0,
              ),

              /* --------------------------- doctors appointment -------------------------- */
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: navbar,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Doctors Appointment',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('prepared to discuss with doctor'),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Available date to continue'),
                              CalendarDatePicker(
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2030),
                                  onDateChanged: (date) => setState(() {
                                        DateTime selectedDate = date;
                                      })),
                              Row(
                                children: const [
                                  Expanded(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 5,
                                      ),
                                      title: Text('Advance'),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 5,
                                      ),
                                      title: Text('Advance'),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: 5,
                                      ),
                                      title: Text('Advance'),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              ListTile(
                                leading: CircleAvatar(),
                                title: Text('Dr. Arcadius Phina'),
                                subtitle: Text('Orhopedic doctor'),
                                trailing:
                                    Icon(Icons.keyboard_arrow_right_outlined),
                              ),
                              Text('Our Patient Today'),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        color: cardColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text('11:00 AM'),
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          hydrationlevelcolor,
                                                      shape: BoxShape.rectangle,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                                ),
                                                Text('Yanto Pecel'),
                                                Text('32 years')
                                              ]),
                                        )),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        color: cardColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text('11:00 AM'),
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          hydrationlevelcolor,
                                                      shape: BoxShape.rectangle,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5))),
                                                ),
                                                Text('Yanto Pecel'),
                                                Text('32 years')
                                              ]),
                                        )),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 40,
                                      // width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: Icon(Icons.message_outlined),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 40,
                                      // width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: Icon(Icons.call),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: hydrationlevelcolor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Text('Book Consultations'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  /* -------------------------- daily health overview ------------------------- */
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  color: backgroundcolor,
                                  child: Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Text(
                                          'Daily Healthy\noverview',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Sunday 23, october\n2023'),
                                            Text('11:00 AM')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: navbar,
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Daily Healthy\n overview',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          Text('Sunday 23, october\n2023'),
                                          Text('11:00 AM')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Daily Healthy\n overview',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          Text('Sunday 23, october\n2023'),
                                          Text('11:00 AM')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(),
                          Row(),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
