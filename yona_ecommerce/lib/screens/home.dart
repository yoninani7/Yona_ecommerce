import 'package:flutter/material.dart';
import 'package:project1/models/users.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Users> _users = [
    Users(name: 'name', email: 'email', phoneNumber: 'phoneNumber'),
  ];
  final List<Users> _list = List.generate(10, (index) {
    return Users(
      name: 'b${index + 1}',
      email: 'a${index + 1}',
      phoneNumber: '123${index + 1}890',
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
        itemCount: _users.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(_users[index].name ?? ''),
              subtitle: Text(_users[index].email ?? ''),
              trailing: IconButton(
                icon: Icon(
                  (_users[index].isFavorite ?? false)
                      ? Icons.favorite
                      : Icons.favorite_border,
                ),
                onPressed: () {
                  setState(() {
                    _users[index].isFavorite = !_users[index].isFavorite!;
                    _users.sort((a, b) {
                      final aFav = a.isFavorite ?? false;
                      final bFav = b.isFavorite ?? false;
                      if (aFav == bFav) return 0;
                      return aFav ? -1 : 1;
                    });
                  });
                },
                color:
                    (_users[index].isFavorite ?? false)
                        ? Colors.red
                        : Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
