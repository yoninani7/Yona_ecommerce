import 'package:flutter/material.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome to Flutter')),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            color: const Color.fromARGB(255, 143, 54, 244),
            child: Center(child: Text('Welcome')),
          ),
        ),
      ),
    );
  }
}
