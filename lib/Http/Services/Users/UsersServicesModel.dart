import 'package:app/Core/Models/User/UserModel.dart';

abstract class UsersClientModel {
  Future<UserModel> fetchUser();
  // Future<void> createUser(UserDTO userData);
  // Future<void> modifyUser(String userId, UserDTO? modifiedUserData);
  // Future<void> deleteUser(String userId);
}