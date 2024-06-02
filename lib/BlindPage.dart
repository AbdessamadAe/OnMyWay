// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(OnMyWay());
}

class OnMyWay extends StatelessWidget {
  const OnMyWay({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlindPage(),
      title: 'BlindInterface',
      debugShowCheckedModeBanner: false,
    );
  }
}

class BlindPage extends StatefulWidget {
  BlindPage({Key? key}) : super(key: key);

  @override
  _BlindPageState createState() => _BlindPageState();
}

class _BlindPageState extends State<BlindPage> {
  bool _isElevated = true;
  //final player = AudioCache();
  String? mtoken = '';
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  // This is where you initialize your state
  @override
  void initState() {
    super.initState();
    requestPermission();
    getToken();
    //initInfo();
  }

  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
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
    await FirebaseFirestore.instance.collection("UserTokens").doc("Blind").set({
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
              styleInformation: bigTextStyleInformation);
      NotificationDetails platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
      await flutterLocalNotificationsPlugin.show(0, message.notification!.title,
          message.notification!.body, platformChannelSpecifics,
          payload: 'Default_Sound');
    });
  }

  void sendPushMessage(String token, String body, String title) async {
    try {
      await http.post(Uri.parse('https://fcm.googleapis.com/fcm/send'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Authorization':
                'key=AAAAkPTVzlM:APA91bHkn3sAp7OTWw8f-nZtXnvhqp67xDFcRB5_M7LEQL6z-FCSNiUDP9fht8GIVqwGjSYEYcE-i00mDp_Jqg8X5DH2EGOpwMSVcZQLJhRgIEeSDveSzo8x-AVEKt2DlosSb-x71yN2',
          },
          body: jsonEncode(<String, dynamic>{
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'status': 'done',
              'title': title,
            },
            'notification': <String, dynamic>{
              'body': body,
              'title': title,
              'android_channel_id': 'OnMyWay',
            },
            'to': token,
          }));
    } catch (e) {
      print(e);
    }
  }

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 196, 194, 210),
        body: Center(
            child: GestureDetector(
                onTap: () async {
                  setState(() {
                    _isElevated = !_isElevated;
                  });
                  DocumentSnapshot documentSnapshot = await FirebaseFirestore
                      .instance
                      .collection("UserTokens")
                      .doc("Voulunteer1")
                      .get();
                  String token = documentSnapshot['token'];
                  print(token);
                  sendPushMessage(token, myController.text, "Rabie Imad");
                },
                child: Padding(
                    padding: EdgeInsets.fromLTRB(55, 90, 50, 0),
                    child: Column(children: [
                      Container(
                        height: 320,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                          boxShadow: _isElevated
                              ? [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(4, 4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                  BoxShadow(
                                    color: Color.fromARGB(255, 196, 194, 210),
                                    offset: Offset(-4, -4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                ]
                              : null,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: GestureDetector(
                            onTap: () {
                              //player.load('audio/my-audio.wav');
                              //player.play('audio/my-audio.wav');
                            },
                            child: Center(
                              child: Text(
                                !_isElevated ? 'Sent!' : 'Send Notification',
                                // Button text
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromARGB(255, 81, 81, 81),
                                ), // Text style
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: TextField(
                          scrollPadding: EdgeInsets.fromLTRB(55, 10, 50, 0),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(55, 40, 50, 0),
                            border: UnderlineInputBorder(),
                            labelText: 'Enter a message',
                          ),
                          controller: myController,
                        ),
                      )
                    ])))));
  }
}
