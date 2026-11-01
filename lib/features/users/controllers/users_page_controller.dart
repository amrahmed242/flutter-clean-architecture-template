import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_clean_architecture/domain/services/users_service.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_state.dart';

final usersPageControllerProvider = NotifierProvider.autoDispose<UsersPageController, UsersState>(
  UsersPageController.new,
);

class UsersPageController extends Notifier<UsersState> {
  @override
  UsersState build() => const UsersInitial();

  UsersService get _usersService => ref.read(usersServiceProvider);

  Future<void> getUsers({bool fail = false}) async {
    state = const UsersLoading();

    final result = await _usersService.getUsers(fail: fail).run();

    ///the provider may have been disposed while the request was running
    if (!ref.mounted) return;

    state = result.match(UsersError.new, UsersData.new);
  }
}
