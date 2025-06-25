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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return Card(
                color: Color(0xFFE9B93A),
                child: Center(child: Text('data')),
              );
            }),
          ),
        ),
      ),
    );
  }
}
