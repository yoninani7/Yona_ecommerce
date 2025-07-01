import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/registerbg.png'),
            fit: BoxFit.fill,
          ),
        ),

        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 50.0,
                right: 50.0,
              ),
              child: Center(child: Image(image: AssetImage('assets/yona.png'))),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'REGISTER NOW ! ',
                  style: TextStyle(
                    color: Color(0xFF013968),
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
