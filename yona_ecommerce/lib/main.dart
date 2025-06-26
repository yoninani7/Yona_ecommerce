import 'package:flutter/material.dart';
import 'package:project1/widgets/buttons.dart';
import 'package:project1/widgets/textFormField.dart';

void main() {
  runApp(const Welcome());
}

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        SnackBar snackBar = SnackBar(
                          content: Text('Settings button pressed!'),
                          duration: Duration(seconds: 2),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    },
                    icon: Icon(
                      Icons.language,
                      color: Color(0xFF013968),
                      size: 30,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 70.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: Center(
                  child: Image(image: AssetImage('assets/yona.png')),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'LOGIN TO YOUR ACCOUNT ! ',
                    style: TextStyle(
                      color: Color(0xFF013968),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ), // Fixed color
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Color(0xFF013968)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 50.0,
                  right: 50.0,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFF013968)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF013968)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        SnackBar snackBar = SnackBar(
                          content: Text('Forgot Password button pressed!'),
                          duration: Duration(seconds: 2),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF013968), // Fixed color
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 90.0,
                  right: 90.0,
                  top: 10.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      SnackBar snackBar = SnackBar(
                        content: Text('Login button pressed!'),
                        duration: Duration(seconds: 2),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF013968), // Fixed color
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              textFormField('innertext'),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Color(0xFF013968),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 10.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            SnackBar snackBar = SnackBar(
                              content: Text('Sign Up button pressed!'),
                              duration: Duration(seconds: 2),
                            );
                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(snackBar);
                          });
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF013968),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50.0, top: 10.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            SnackBar snackBar = SnackBar(
                              content: Text('Login as Guest button pressed!'),
                              duration: Duration(seconds: 2),
                            );
                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(snackBar);
                          });
                        },
                        child: Text(
                          'Login as Guest',
                          style: TextStyle(
                            color: Color(0xFF013968),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // textFormField("innertext"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
