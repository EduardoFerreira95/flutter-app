import 'package:app/Presentation/Providers/UserProvider/UserController.dart';
import 'package:get/get.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController.makeController());
  }
}