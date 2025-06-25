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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/loginbg.png')),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 70.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: Center(
                  child: Image(image: AssetImage('assets/loginbg.png')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
