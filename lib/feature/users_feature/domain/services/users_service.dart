import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/models/user.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/usecases/users_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersSerivceProvider = Provider<UsersService>((ref) {
  return UsersService();
});

class UsersService implements IUsers {
  @override
  Future<User> getUserById({String? id}) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return const User('name', 'nickname');
  }

  @override
  Future<List<User>> getUsers() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return const [User('name1', 'nickname1'), User('name2', 'nickname2')];
  }
}
