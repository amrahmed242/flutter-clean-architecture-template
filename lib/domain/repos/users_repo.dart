import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_clean_architecture/core/error/failure.dart';
import 'package:flutter_mvvm_clean_architecture/core/network/restful_api_client.dart';
import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';

///repos only talk to data sources (api, local db) and map raw data to models.
///no interface needed: override [usersRepoProvider] in tests to fake it.
final usersRepoProvider = Provider<UsersRepo>((ref) {
  return UsersRepo(dio: ref.watch(dioProvider));
});

class UsersRepo {
  final Dio _dio;
  UsersRepo({required this._dio});

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        'https://dummyapi.io/data/v1/user?limit=25',
        options: Options(headers: {'app-id': '61cdbf18fcdc1f51bf86bd50'}),
      );
      final data = response.data?['data'];
      if (data is! List) throw Failure(message: 'parsing error');
      return data.map((user) => User.fromJson(user as Map<String, dynamic>)).toList();
    } on Failure {
      rethrow;
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  Future<User> fetchUserById(String id) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return User.fromJson({'id': id, 'firstName': 'value'});
  }
}
