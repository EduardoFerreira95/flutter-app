import 'package:app/Http/Services/Users/UsersServices.dart';
import 'package:app/Http/Services/Users/UsersServicesModel.dart';
import 'package:get/get.dart';

import 'package:app/Core/Models/User/UserModel.dart';

class UserController extends GetxController with StateMixin<List<UserModel>> {
  final UsersClientModel usersClient;
  UserController(this.usersClient);

  Future<List<UserModel>> fetchUser() async {
    try {
      RxStatus.loading();
      final data = await usersClient.fetchUsers();
      change(data, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error('Falha na Requisição'));
    }
    return value ?? [] as List<UserModel>;
  }

  factory UserController.makeController() {
    return UserController(UsersClient());
  }
}