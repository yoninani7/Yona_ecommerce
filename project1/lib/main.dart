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
            image: DecorationImage(
              image: AssetImage('assets/loginbg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 100.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: Center(
                  child: Image(image: AssetImage('assets/yona.png')),
                ),
              ),
              Text(
                'Login to your account',
                style: TextStyle(color: Color(0x000035c7)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
