import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/models/user.dart';

abstract class IUsers {
  Future<List<User>> getUsers();
  Future<User> getUserById({@required String id});
}
