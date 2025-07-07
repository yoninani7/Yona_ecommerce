import 'package:flutter/cupertino.dart';

class Users {
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
  

}

