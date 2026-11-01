import 'package:dio/dio.dart';
import 'package:flutter_mvvm_clean_architecture/core/error/failure.dart';
import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';
import 'package:flutter_mvvm_clean_architecture/domain/repos/users_repo.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_controller.dart';
import 'package:flutter_mvvm_clean_architecture/features/users/controllers/users_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

const _user = User(id: '1', title: 'mr', firstName: 'Amr', lastName: 'Ahmed', picture: '');

///fakes the data layer only, the real service + controller logic runs.
class _FakeUsersRepo extends UsersRepo {
  final bool fail;
  _FakeUsersRepo({this.fail = false}) : super(dio: Dio());

  @override
  Future<List<User>> fetchUsers() async {
    if (fail) throw Failure(message: 'network error');
    return const [_user];
  }
}

void main() {
  ProviderContainer makeContainer({bool fail = false}) => ProviderContainer.test(
    overrides: [usersRepoProvider.overrideWithValue(_FakeUsersRepo(fail: fail))],
  );

  test('starts in the initial state', () {
    final container = makeContainer();
    expect(container.read(usersPageControllerProvider), isA<UsersInitial>());
  });

  test('getUsers emits data on success', () async {
    final container = makeContainer();
    final sub = container.listen(usersPageControllerProvider, (_, _) {});

    await container.read(usersPageControllerProvider.notifier).getUsers();

    final state = sub.read();
    expect(state, isA<UsersData>());
    expect((state as UsersData).users, const [_user]);
  });

  test('getUsers emits error when the repo fails', () async {
    final container = makeContainer(fail: true);
    final sub = container.listen(usersPageControllerProvider, (_, _) {});

    await container.read(usersPageControllerProvider.notifier).getUsers();

    final state = sub.read();
    expect(state, isA<UsersError>());
    expect((state as UsersError).failure.message, 'network error');
  });
}
