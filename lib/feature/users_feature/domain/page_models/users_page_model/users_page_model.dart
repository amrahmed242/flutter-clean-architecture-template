import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_mvvm_clean_architecture/core/utils/faliure.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/models/user.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_state.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/services/users_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/extensions/task_fail_mapper.dart';

final usersPageModel = StateNotifierProvider.autoDispose<UsersPageModel, UsersState>(
  (ref) => UsersPageModel(usersService: ref.watch(usersSerivceProvider)),
);

class UsersPageModel extends StateNotifier<UsersState> {
  UsersPageModel({required UsersService usersService})
      : super(const UsersState.initial()) {
    _usersService = usersService;
  }

  late UsersService _usersService;

  Future<void> getUsers({bool fail = false}) async {
    state = const UsersState.loading();

    await Task(() => _usersService.getUsers(fail: fail))
        .attempt()
        .mapFailure()
        .run()
        .then((o) => setUsers(o as Either<Failure, List<User>>));
  }

  setUsers(Either<Failure, List<User>> users) {
    state = UsersState.data(users: users);
  }
}
