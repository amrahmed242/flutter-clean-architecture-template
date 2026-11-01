import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_clean_architecture/core/error/failure.dart';
import 'package:flutter_mvvm_clean_architecture/core/extensions/task_fail_mapper.dart';
import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';
import 'package:flutter_mvvm_clean_architecture/domain/repos/users_repo.dart';
import 'package:fpdart/fpdart.dart';

///services hold the business logic and are what page controllers call.
///they combine one or more repos and return `TaskEither<Failure, T>`
///so callers never need a try/catch.
final usersServiceProvider = Provider<UsersService>((ref) {
  return UsersService(usersRepo: ref.watch(usersRepoProvider));
});

class UsersService {
  final UsersRepo _usersRepo;
  UsersService({required this._usersRepo});

  TaskEither<Failure, List<User>> getUsers({bool fail = false}) => (() async {
    //simulate a failing request
    if (fail) {
      await Future.delayed(const Duration(milliseconds: 1800));
      throw Failure(message: 'network error');
    }
    return _usersRepo.fetchUsers();
  }).toTaskEither();

  TaskEither<Failure, User> getUserById(String id) =>
      (() => _usersRepo.fetchUserById(id)).toTaskEither();
}
