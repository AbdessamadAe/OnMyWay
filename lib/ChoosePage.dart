// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
//TODO: HOMEPAGE
import 'package:OnMyWay/VolunteerPage.dart';
import 'package:OnMyWay/BlindPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(OnMyWay());
}

class OnMyWay extends StatelessWidget {
  const OnMyWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(0, 160, 143, 254), // Set the desired button background color
      ),
    ),
  ),
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
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 239, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 399,
                height: 15,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: <Color>[
                      Color(0xff5b5389),
                      Color(0x43867bc7),
                      Color(0x00756ab6)
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 30),
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
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.asset(
                      'Assets/images/image0.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BlindPage(), // the Blind interface needs to be placed here
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                            elevation: 0,
                            ),
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
                    ),
                    SizedBox(height: 12),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                        decoration: BoxDecoration(
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
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                
                                context,
                                
                                MaterialPageRoute(
                                  
                                  builder: (context) => VolunteerPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                            elevation: 0, // Set elevation to 0 or adjust as needed
                            ),
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
                    ),
                    SizedBox(height: 0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
