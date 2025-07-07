import 'package:flutter/cupertino.dart';

class Users extends ChangeNotifier {
  String? name;
  String? email;
  String? phoneNumber;
  bool? isFavorite;
  Users({
    @required this.name,
    @required this.email,
    @required this.phoneNumber,
    this.isFavorite = true,
  });
  
  List<Users> get users => _users;
  final List<Users> _users = [];

  void adduser(Users user) {
    _users.add(user);
    notifyListeners();
  } 

}

