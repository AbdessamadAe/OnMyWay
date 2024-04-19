
import 'package:flutter/material.dart';
import 'ChoosePage.dart';
import 'VolunteerPage.dart';
import 'Profile.dart';
import 'BlindPage.dart';
import 'LogInPage.dart';import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future <void> main() async {
  debugPrint('Starting app...');
  WidgetsFlutterBinding.ensureInitialized();
  /* await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    ); */
  debugPrint('App started');
  runApp(const OnMyWay());
}

class OnMyWay extends StatelessWidget {
  const OnMyWay({super.key});

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
      title: 'OnMyWay',
      initialRoute: '/',
      routes: {
        '/': (context) => const LogInPage(),
        '/second': (context) => const MyHomePage(),
        '/third': (context) => const VolunteerPage(),
        '/fourth': (context) => const BlindPage(),
        '/fifth': (context) => ProfileScreen(user: user),
      },
      theme: ThemeData(
        // the buttons turned white for some reason so this fixed the issue
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(0, 160, 143, 254),
          ),
        ),
      ),
    );
  }
}
