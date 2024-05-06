// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
//TODO: LogInPage
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(OnMyWay());
}

class OnMyWay extends StatelessWidget {
  const OnMyWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogInPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(0, 160, 143, 254),
      ),
    ),
  ),
      
    );
  }
}

void _launchOutlookLoginPage() async {
    const url = 'https://outlook.office365.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: screenSize.height,
        decoration: BoxDecoration(
          color:  Color.fromARGB(169, 212, 227, 248),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 399,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0, -1.2),
                    end: Alignment(0, 1.05),
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
                          padding: const EdgeInsets.fromLTRB(25, 100, 0, 35),
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                              fontFamily: 'Koh Santepheap',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 130, 0, 0),
                          child: Text(
                            'to OnMyWay',
                            style: TextStyle(
                              fontFamily: 'Koh Santepheap',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(250, 100, 20, 0),
                      child:ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: Image.asset(
                      'Assets/images/logo11.png',
                      height: 190,
                      width: 190,
                      fit: BoxFit.cover,
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: PageView(
                        controller: PageController(initialPage: 1),
                        children: [
                          Image.asset(
                            'Assets/images/image3.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'Assets/images/image1.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'Assets/images/image2.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'Assets/images/image4.jpg',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(height: 40),
            Expanded(
              child: Container(
                
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  SizedBox(height: 35),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
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
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            _launchOutlookLoginPage();//NEED TO FIGURE OUT HOW TO LINK THIS LOGIN WITH THE LOGIN TO THE APP
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_outline, size: 40,color: Color.fromARGB(160, 0, 0, 0),),
                              SizedBox(width: 13),
                              Text(
                                'Login with Outlook',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Inria Serif',
                                  fontSize: 23.5,
                                  fontWeight: FontWeight.w600,
                                  height: 1.1975,
                                  letterSpacing: 1.25,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            _launchOutlookLoginPage();// SEE HOW TO MAKE THE LOGIN AS A GUEST 
                          
                          },
                          child: Text(
                            'DON’T HAVE AN ACCOUNT? LOGIN AS A GUEST',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inria Serif',
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              height: 1,
                              letterSpacing: 1,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
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
