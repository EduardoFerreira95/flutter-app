import 'package:app/Core/Domains/User/User.dart';
import 'package:app/Core/Models/User/UserModel.dart';
import 'package:app/Http/Builder/HttpClientBuilder.dart';
import 'package:app/Http/Paths/HttpPathsEnum.dart';
import 'package:app/Http/Services/Users/UsersServicesModel.dart';

class UsersClient extends UsersClientModel {
  @override
  Future<List<UserModel>> fetchUsers() async {
    var response = await httpClient.makeGetCall<List<dynamic>>(usersPath);
    List<dynamic> usersJSON = response.data;
    
    return usersJSON.map((userData) => User.fromJSON(userData)).toList();
  }
}