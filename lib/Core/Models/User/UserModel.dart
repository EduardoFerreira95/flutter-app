abstract class UserDTO {
  late String name;
  late String avatar;
  late String createdAt;
  UserDTO(this.name, this.avatar, this.createdAt);
}

abstract class UserModel extends UserDTO {
  late String id;
  UserModel(this.id, String name, String avatar, String createdAt) : super(name, avatar, createdAt);
}