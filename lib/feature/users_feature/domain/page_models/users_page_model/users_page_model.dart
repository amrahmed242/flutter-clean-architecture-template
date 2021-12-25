import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/page_models/users_page_model/users_page_state.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/services/users_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersPageModel = StateNotifierProvider.autoDispose<UsersPageModel, UsersState>(
  (ref) => UsersPageModel(usersService: ref.watch(usersSerivceProvider)),
);

class UsersPageModel extends StateNotifier<UsersState> {
  UsersPageModel({required UsersService usersService})
      : super(const UsersState.initial()) {
    _usersService = usersService;
  }

  late UsersService _usersService;

  Future<void> getUsers() async {
    state = const UsersState.loading();

    try {
      final users = await _usersService.getUsers();
      state = UsersState.data(users: users);
    } catch (_) {
      state = const UsersState.error('Error!');
    }
  }
}
