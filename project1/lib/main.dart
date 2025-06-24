import 'package:flutter/material.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Journey to destiny'),
          backgroundColor: Color(0xFFE9B93A),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Container(
                color: const Color.fromARGB(255, 155, 120, 194),
                child: Center(child: Text('Welcome')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
