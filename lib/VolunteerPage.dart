// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
//TODO:VolunteerPage()


import 'package:flutter/material.dart';

void main() { //comment this later
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

// class Menu extends StatelessWidget {
//   int _selectedIndex = 0;

//   final List<Widget> _widgetOptions = <Widget>[
//     Text('Home'),
//     Text('Help'),
//     Text('School'),
//     Text('Community'),
//     Text('Account'),
//   ];

//   void _onItemSelected(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         selectedIndex: _selectedIndex,
//         onItemSelected: _onItemSelected,
//       ),
//     );
//   }
  
//   void setState(Null Function() param0) {}
// }
class VolunteerPage extends StatelessWidget {
  const VolunteerPage({super.key});

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
                                margin: EdgeInsets.fromLTRB(150, 10, 0, 0), // Adjust bottom margin for 'AUI'
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
                                    EdgeInsets.fromLTRB(26, 90, 32, 12),
                                    // Adjust right margin for spacing between '# VOLUNTEERS' and '# BLIND'
                                    child: Text(
                                      '# VOLUNTEERS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quantico',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        height: 1.43,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),Container(
                                  margin: EdgeInsets.fromLTRB(0, 14, 40, 5),
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color.fromARGB(255, 81, 69, 120),),
                                  width: 5, // Adjust the width as needed
                                  height: 115, // Adjust the height as needed
                                  
                                ),
                                
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 90, 0, 12),
                                    child: Text(
                                      '# BLIND',//textAlign: TextAlign.center,
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
                          padding: EdgeInsets.fromLTRB(6, 0, 0, 24), // Adjust padding as needed
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(71, 219, 225, 134),
                            backgroundImage:
                                AssetImage('Assets/images/image6.png'),
                            radius: 45, // Adjust the radius here
                          ),
                        ),Container(
                            margin: EdgeInsets.fromLTRB(2, 8, 0, 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Volunteer of the Month!!',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    height: 1.43,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(height: 10), // Add some spacing between the two texts
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
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigationBar({super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

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
      currentIndex: selectedIndex,
      selectedItemColor: Color.fromARGB(255, 159, 116, 198),
      onTap: onItemSelected,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: Color.fromARGB(255, 15, 15, 15),
      elevation: 10.0,
      backgroundColor: Colors.white,
    );
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
