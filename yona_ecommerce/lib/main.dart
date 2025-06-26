import 'package:flutter/material.dart';
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
                  top: 50.0,
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
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  children: [
                    SizedBox(height: 50.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(
                            255,
                            240,
                            240,
                            240,
                          ), // Lighter background
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12.0,
                            ), // More rounded corners
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1.5,
                            ), // Subtle border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(211, 224, 202, 7),
                              width: 2.0,
                            ), // Color change on focus
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 20.0,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Color(0xFF013968), // Vibrant icon color
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onTap: () {},
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(
                            255,
                            240,
                            240,
                            240,
                          ), // Lighter background
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              12.0,
                            ), // More rounded corners
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1.5,
                            ), // Subtle border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                              color: const Color.fromARGB(211, 224, 202, 7),
                              width: 2.0,
                            ), // Color change on focus
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 20.0,
                          ),
                          prefixIcon: Icon(
                            Icons.key_outlined,
                            color: Color(0xFF013968), // Vibrant icon color
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.visibility_off_outlined,
                              color: Color(0xFF013968),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF013968),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Color(0xFF013968),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 40.0),
                      child: TextButton(
                        onPressed: () {},
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
                      padding: const EdgeInsets.only(right: 50.0, top: 40.0),
                      child: TextButton(
                        onPressed: () {},
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
