// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isElevated = !_isElevated;
            });
          },
          child:
          Padding(
  padding: EdgeInsets.fromLTRB(55, 200, 50, 0),
  child: Container(
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
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ]
          : null,
    ),
    child: Padding(
      padding: EdgeInsets.all(20), // Adjust padding as needed for the text
      child: Center(
        child: Text(
          'Send Notification', // Button text
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 81, 81, 81),
          ), // Text style
        ),
      ),
    ),
  ),
))
        
        //   body:Padding(
        //   padding: EdgeInsets.fromLTRB(70, 350, 50, 0), // Adjust padding as needed for the circular button
        //   child: Container(
        //     width: 250, // Set your desired button width
        //     height: 250, // Set your desired button height
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle, // Set container shape to circle
        //       color: Color.fromARGB(255, 201, 223, 240), // Set button background color
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(0.4), // Add shadow for depth effect
        //           spreadRadius: 3,
        //           blurRadius: 5,
        //           offset: Offset(0, 3),
        //         ),
        //       ],
        //     ),
        //     child: Padding(
        //       padding: EdgeInsets.all(20), // Adjust padding as needed for the text
        //       child: Center(
        //         child: Text(
        //           'Press Me', // Button text
        //           style: TextStyle(
        //             fontSize: 30,
        //             fontWeight: FontWeight.w600,

        //             color: const Color.fromARGB(255, 81, 81, 81)),
        //             // Text style
        //         ),
        //       ),
        //     ),
        //   ),
        // )

        ));
  }
}
