import 'package:app/Core/Domains/User/User.dart';
import 'package:app/Core/Models/User/UserModel.dart';
import 'package:app/Http/Builder/HttpClientBuilder.dart';
import 'package:app/Http/Services/Users/UsersServicesModel.dart';

class UsersClient extends UsersClientModel {
  @override
  Future<UserModel> fetchUser() async {
    var response = await httpClient.makeGetCall<UserModel>('users');
    var userData = response.data;
    
    return User(userData.id, userData.name, userData.avatar, userData.createdAt);
  }
}

final usersClient = UsersClient();