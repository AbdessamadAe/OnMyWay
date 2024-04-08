import 'package:flutter/material.dart';

class User {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String image;
  final String email;

  User({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.image,
    required this.email,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User dummyUser = User(
      firstName: 'John',
      lastName: 'Doe',
      phoneNumber: '123-456-7890',
      image: 'Assets/images/image0.jpg',
      email: 'john.doe@example.com',
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(user: dummyUser),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  CustomBottomNavigationBar({
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

class ProfileScreen extends StatefulWidget {
  final User user;

  ProfileScreen({required this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Home Screen', textAlign: TextAlign.center),
    Text('Search', textAlign: TextAlign.center),
    Text('School Screen', textAlign: TextAlign.center),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account of ${widget.user.firstName}'),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(widget.user.image),
            ),
            SizedBox(height: 10),
            Text(
              '${widget.user.firstName} ${widget.user.lastName}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${widget.user.phoneNumber}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            MenuItem(
              icon: Icons.person,
              title: 'Profile',
              onTap: () {}, // Add navigation or functionality
            ),
            MenuItem(
              icon: Icons.mail,
              title: 'Mail',
              onTap: () {}, // Add navigation or functionality
            ),
            MenuItem(
              icon: Icons.star,
              title: 'Score',
              onTap: () {}, // Add navigation or functionality
            ),
            MenuItem(
              icon: Icons.exit_to_app,
              title: 'Logout',
              onTap: () {}, // Add navigation or functionality
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
