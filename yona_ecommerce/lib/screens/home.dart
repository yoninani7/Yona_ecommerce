import 'package:flutter/material.dart';
import 'package:project1/models/users.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Users> _list = List.generate(10, (index) {
    return Users(
      name: 'adasf ${index + 1}',
      email: 'Yonatan kassahun${index + 1}',
      phoneNumber: '1234567890',
    );
  });
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
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  _list[index].name?.substring(0, 2) ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(_list[index].name ?? ''),
              subtitle: Text(_list[index].email ?? ''),
              trailing: Text(_list[index].phoneNumber ?? ''),
            ),
          );
        },
      ),
    );
  }
}
