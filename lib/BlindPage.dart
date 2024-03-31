import 'package:flutter/material.dart';

class BlindPage extends StatelessWidget {
  const BlindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blank Page'),
      ),
      body: const Center(
        child: Text('Your Blank Page'),
      ),
      //home: BlindPage(),
    );
  }
}
