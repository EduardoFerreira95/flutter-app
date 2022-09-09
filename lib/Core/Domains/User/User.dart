import 'package:app/Core/Models/User/UserModel.dart';

class User extends UserModel {
  User({ required String id, required String name, required String avatar, required String createdAt }) : super(id, name, avatar, createdAt);
  factory User.fromJSON(Map<String, dynamic> json) {
    final id = json['id'] as String;
    final name = json['name'] as String;
    final avatar = json['avatar'] as String;
    final createdAt = json['createdAt'] as String;

    return User(id: id, name: name, avatar: avatar, createdAt: createdAt);
  }
}