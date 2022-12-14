import 'package:app/Core/Models/User/UserModel.dart';

abstract class UsersClientModel {
  Future<List<UserModel>> fetchUsers();
  // Future<void> createUser(UserDTO userData);
  // Future<void> modifyUser(String userId, UserDTO? modifiedUserData);
  // Future<void> deleteUser(String userId);
}