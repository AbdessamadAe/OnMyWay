import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_analytics/firebase_analytics.dart';


class BlindPage extends StatefulWidget {
  const BlindPage({super.key});

  @override
  _BlindPageState createState() => _BlindPageState();
}

class _BlindPageState extends State<BlindPage> {
  // This is where you initialize your state
  @override
  void initState() {
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blind Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Define what the button does when it gets pressed
            DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
                .collection("UserTokens")
                .doc("Voulunteer1")
                .get();
            String token = documentSnapshot['token'];
            print(token);
            sendPushMessage(token, "Help me!", "Blind Person");
          },
          child: const Text('Get Help!'),
        ),
      ),
      //home: BlindPage(),
    );
  }
}
