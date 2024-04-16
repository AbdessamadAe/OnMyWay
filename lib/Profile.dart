import 'package:flutter/material.dart';

// void main() { //comment this later
//   runApp(const MyApp());
// }

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
  const MyApp({super.key});

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
      selectedItemColor: const Color.fromARGB(255, 159, 116, 198),
      onTap: onItemSelected,
      type: BottomNavigationBarType.shifting,
      unselectedItemColor: const Color.fromARGB(255, 15, 15, 15),
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

  const ProfileScreen({super.key, required this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Home Screen', textAlign: TextAlign.center),
    const Text('Search', textAlign: TextAlign.center),
    const Text('School Screen', textAlign: TextAlign.center),
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
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(widget.user.image),
            ),
            const SizedBox(height: 10),
            Text(
              '${widget.user.firstName} ${widget.user.lastName}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.user.phoneNumber,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
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
