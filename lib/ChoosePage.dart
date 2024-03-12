// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  debugPrint('Starting app...');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screenSize.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 243, 239, 255),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 399, // Set the width of the container here
                  height: 15,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[
                        Color(0xff5b5389),
                        Color(0x43867bc7),
                        Color(0x00756ab6)
                      ],
                      // stops: <double>[0, 1, 1],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Align(
                          alignment: Alignment.centerLeft, // Align the text to the left
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0), // Position the text at x = 30, y = 51
                            child: Text(
                              'OnMyWay',
                              style: TextStyle(
                                fontFamily: 'Koh Santepheap',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                color: Color(0xff343356),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Assets/images/image0.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        topRight: Radius.circular(17),
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      ),
                    ),
                  ),
                ),
              ),SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 20, 12, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[
                                Color(0x82a08ffe),
                                Color(0x7d685ea0),
                                Color(0x00756ab6)
                              ],
                              stops: <double>[0, 1, 1],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(17),
                              topRight: Radius.circular(17),
                              bottomLeft: Radius.circular(17),
                              bottomRight: Radius.circular(17),
                            ),
                          ),
                          child: const Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'I need visual assistance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Inria Serif',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  height: 1.1975,
                                  letterSpacing: 1.25,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),SizedBox(height: 12),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0, -1),
                              end: Alignment(0, 1),
                              colors: <Color>[
                                Color(0xa0a598f1),
                                Color(0x7d685ea0),
                                Color(0x00756ab6)
                              ],
                              stops: <double>[0, 1, 1],
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(17),
                              topRight: Radius.circular(17),
                              bottomLeft: Radius.circular(17),
                              bottomRight: Radius.circular(17),
                            ),
                          ),
                          child: const Center(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'I would like to volunteer',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Inria Serif',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  height: 1.1975,
                                  letterSpacing: 1.2,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),SizedBox(height: 0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
