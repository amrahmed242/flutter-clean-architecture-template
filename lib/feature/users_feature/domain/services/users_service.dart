import 'package:dio/dio.dart';
import 'package:flutter_mvvm_clean_architecture/core/utils/faliure.dart';
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
    return User.fromJson(const {'name': 'value'});
  }

  @override
  Future<List<User>> getUsers({bool fail = false}) async {
    //simulate a failing request
    if (fail) {
      await Future.delayed(const Duration(milliseconds: 1800));
      throw Failure(message: 'network error');
    }
    try {
      var response = await Dio().get('https://dummyapi.io/data/v1/user?limit=25',
          options: Options(headers: {'app-id': '61cdbf18fcdc1f51bf86bd50'}));
      if (response.data != null) {
        final users = <User>[];
        for (var user in response.data?['data']) {
          users.add(User.fromJson(user));
        }
        return users;
      } else {
        throw Failure(message: 'parsing error');
      }
    } on Failure {
      rethrow;
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
