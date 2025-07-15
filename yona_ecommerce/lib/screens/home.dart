import 'package:flutter/material.dart';
import 'package:project1/models/users.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFE9B93A),
      ),
      body: Center(child: Text('data')),
    );
  }
}
