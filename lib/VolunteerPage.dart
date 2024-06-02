// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
//TODO:VolunteerPage()

import 'package:OnMyWay/ChoosePage.dart';
import 'package:OnMyWay/Profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  //comment this later
  runApp(OnMYWay());
}

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

class VolunteerPage extends StatefulWidget {
  const VolunteerPage({super.key});

  @override
  _VolunteerPageState createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  @override
  String? mtoken = '';
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void initState() {
    super.initState();
    requestPermission();
    getToken();
    initInfo();
  }

  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }

  void saveToken(String? token) async {
    await FirebaseFirestore.instance
        .collection("UserTokens")
        .doc("Voulunteer1")
        .set({
      "token": token,
    });
    print(token);
  }

  void getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      setState(() {
        mtoken = token;
        print("My Token: $mtoken");
      });
      saveToken(token);
    });
  }

  void initInfo() async {
    var androidInitilize =
        new AndroidInitializationSettings('@mipmap/ic_launcher');
    var initilizationsSettings =
        new InitializationSettings(android: androidInitilize);
    flutterLocalNotificationsPlugin.initialize(initilizationsSettings,
        onDidReceiveNotificationResponse: (NotificationResponse) async {});
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print("...................onMessage: $message...................");
      print(
          "...................onMessage: ${message.notification!.title}...................");
      print(
          "...................onMessage: ${message.notification!.body}...................");
      BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
          message.notification!.body.toString(),
          htmlFormatBigText: true,
          contentTitle: message.notification!.title);
      AndroidNotificationDetails androidPlatformChannelSpecifics =
          AndroidNotificationDetails('OnMyWay', 'OnMyWay',
              importance: Importance.max,
              priority: Priority.high,
              //icon: "Assets/images/logo0.png",
              styleInformation: bigTextStyleInformation);
      NotificationDetails platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.show(0, message.notification!.title,
          message.notification!.body, platformChannelSpecifics,
          payload: 'Default_Sound');
    });
  }

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
                                          EdgeInsets.fromLTRB(10, 90, 25, 12),
                                      // Adjust right margin for spacing between '# VOLUNTEERS' and '# BLIND'
                                      child: Text(
                                        '#28 VOLUNTEERS',
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
                                      margin: EdgeInsets.fromLTRB(0, 14, 35, 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: Color.fromARGB(255, 81, 69, 120),
                                      ),
                                      width: 5, // Adjust the width as needed
                                      height:
                                          115, // Adjust the height as needed
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 90, 20, 12),
                                      child: Text(
                                        '# 4 BLINDS', //textAlign: TextAlign.center,
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
                      margin: EdgeInsets.fromLTRB(0, 5, 3, 18),
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
                                6, 0, 0, 24), // Adjust padding as needed
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(71, 219, 225, 134),
                              backgroundImage:
                                  AssetImage('Assets/images/image6.png'),
                              radius: 45, // Adjust the radius here
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 8, 0, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Volunteer of the Month!!',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        10), // Add some spacing between the two texts
                                Text(
                                  'Student name (--) ',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                    color: Color(0xff000000),
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
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar());
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

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Perform actions based on the selected index
    switch (_selectedIndex) {
      case 0:
        // Navigate to home screen or perform related action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
        break;
      case 1:
        // Navigate to help screen or perform related action

        break;
      case 2:
        // Navigate to school screen or perform related action
        break;
      case 3:
        // Navigate to community screen or perform related action
        break;
      case 4:
        // Navigate to account screen or perform related action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen(user: user)),
        );
        break;
    }
  }

  var user = User(
      firstName: 'John',
      lastName: 'Doe',
      phoneNumber: '1234567890',
      image: 'path/to/image.jpg',
      email: 'j.Doe@aui.ma');
//888888888888888888888888888888 Menu 888888888888888888
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
      currentIndex: _selectedIndex,
      selectedItemColor: Color.fromARGB(255, 159, 116, 198),
      onTap: _onItemSelected,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Color.fromARGB(255, 15, 15, 15),
      elevation: 10.0,
      backgroundColor: Colors.white,
    );
  }
}
