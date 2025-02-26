import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? name;
  String? reg;

  UserModel({this.name, this.reg});

  // Factory constructor to create an instance from a JSON map
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      reg: json['reg'],
    );
  }

  // Method to convert the UserModel instance back to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'reg': reg,
    };
  }
}
