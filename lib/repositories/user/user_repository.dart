import 'package:flutter_app_storage/models/user_model.dart';
import 'package:flutter_app_storage/repositories/user/firebase_storage.dart';

class UserRepository extends FirebaseStorage {
  Future<bool> salvar(UserModel user) {
    return super.save("users", user.toJson());
  }

  Future<UserModel> buscar(String id) async {
    return await super.findOne("users", field: "id", id: id);
  }
}
