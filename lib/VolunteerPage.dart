// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
//TODO:VolunteerPage()

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


// void main() { //comment this later
//   runApp(OnMYWay());
// }

class OnMYWay extends StatelessWidget {
  const OnMYWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VolunteerPage(),
      title: 'Volunteer Page',
      debugShowCheckedModeBanner: false,
    );
  }
}

// class Menu extends StatelessWidget {
//   int _selectedIndex = 0;

//   final List<Widget> _widgetOptions = <Widget>[
//     Text('Home'),
//     Text('Help'),
//     Text('School'),
//     Text('Community'),
//     Text('Account'),
//   ];

//   void _onItemSelected(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         selectedIndex: _selectedIndex,
//         onItemSelected: _onItemSelected,
//       ),
//     );
//   }

//   void setState(Null Function() param0) {}
// }
class VolunteerPage extends StatefulWidget {
  const VolunteerPage({super.key});

  @override
  _VolunteerPageState createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 240, 235, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(25, 40, 24, 10),
              height: 95,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 0),
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color.fromARGB(255, 183, 173, 237),
                    Color(0x43867bc7),
                    Color(0x00756ab6)
                  ],
                  stops: <double>[0, 1, 0],
                ),
              ),
              child: Text(
                'OnMyWay',
                style: TextStyle(
                  fontFamily: 'Koh Santepheap',
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  height: 1.3325,
                  color: Color(0xff343356),
                ),
              ),
            ),
//////////////////////////
            Container(
              padding: EdgeInsets.fromLTRB(16, 19, 12, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 18),
                    padding: EdgeInsets.fromLTRB(0, 10.5, 0, 10),
                    height: 218,
                    decoration: BoxDecoration(
                      color: Color(0x9e867bc7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //////////////////////////
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(150, 10, 0,
                                    0), // Adjust bottom margin for 'AUI'
                                child: Text(
                                  'AUI',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'PollerOne',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1875,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(15, 90, 118, 12),
                                    // Adjust right margin for spacing between '# VOLUNTEERS' and '# BLIND'
                                    child: Text(
                                      '# VOLUNTEERS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quantico',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(8, 90, 0, 12),
                                    child: Text(
                                      '# BLIND', //textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quantico',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                          height: double.infinity,
                          child: Column(
                            children: [
                              Center(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // yello container
              padding: EdgeInsets.fromLTRB(16, 0, 12, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 18),
                    padding: EdgeInsets.fromLTRB(0, 10.5, 30.5, 9),
                    height: 140,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(158, 219, 225, 134),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              8, 0, 30.5, 24), // Adjust padding as needed
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(71, 219, 225, 134),
                            backgroundImage:
                                AssetImage('Assets/images/image6.png'),
                            radius: 45, // Adjust the radius here
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.blind),
          label: 'Help',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups),
          label: 'Community',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Account',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Color.fromARGB(255, 159, 116, 198),
      onTap: onItemSelected,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Color.fromARGB(255, 15, 15, 15),
      elevation: 10.0,
      backgroundColor: Colors.white,
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
