import 'package:flutter/material.dart';
import 'package:project1/screens/login.dart';
import 'package:project1/widgets/textFormField.dart';
import 'package:project1/widgets/textpass.dart';

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
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 40.0,
                right: 40.0,
              ),
              child: textFormField('Username', Icons.person_outline),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 40.0,
                right: 40.0,
              ),
              child: textFormField('Email', Icons.email_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 40.0,
                right: 40.0,
              ),
              child: textpass('Password', Icons.key_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 40.0,
                right: 40.0,
              ),
              child: textpass('Confirm Password', Icons.vpn_key),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                left: 70.0,
                right: 70.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF013968),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  SnackBar snackBar = SnackBar(
                    content: Text('Registration Successful!'),
                    duration: Duration(seconds: 2),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'OR ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF013968),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 70.0, right: 70.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(213, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Color(0xFF013968)),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(fontSize: 17, color: Color(0xFF013968)),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 16, color: Color(0xFF013968)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF013968),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
