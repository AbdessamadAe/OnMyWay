// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      home: My2Page(),
    );
  }
}

class My2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screenSize.height,
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
            Container(
              // autogrouperap4iPu5 (W2Qstn5G5RcFCX6QxJdZqV)
              padding: EdgeInsets.fromLTRB(16, 19, 12, 0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group59Q1Z (2163:181)
                    margin: EdgeInsets.fromLTRB(0, 0, 3, 18),
                    padding: EdgeInsets.fromLTRB(0, 10.5, 30.5, 8),
                    height: 218,
                    decoration: BoxDecoration(
                      color: Color(0x9e867bc7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(150, 10, 55, 150),
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
                        Container(
                          // auivu1 (2147:68)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Text(
                              '# VOLENTEERS',
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
            Container( // yello container
              
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
        padding: EdgeInsets.fromLTRB(8, 0, 30.5, 24), // Adjust padding as needed
        child: CircleAvatar(
          backgroundColor: Color.fromARGB(71, 219, 225, 134),
          backgroundImage: AssetImage('Assets/images/image6.png'),
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