
import 'package:flutter/material.dart';
import 'ChoosePage.dart';
import 'VolunteerPage.dart';
import 'Profile.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = User(
      firstName: 'John',
      lastName: 'Doe',
      phoneNumber: '1234567890',
      image: 'path/to/image.jpg',
      email: 'j.Doe@aui.ma'
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Title',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(), // FirstPage route
        '/second': (context) => VolunteerPage(), // SecondPage route
        '/third': (context) => ProfileScreen(user: user), // ThirdPage route
      },
    );
  }
}
