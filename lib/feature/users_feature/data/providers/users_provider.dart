import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/services/users_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user.dart';

///set maintain state to true to cache the session value in case of no listners
///ref.maintainState = true;
final usersProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  final userService = ref.watch(usersSerivceProvider);

  ref.maintainState = true;
  ref.onDispose(() {
    ///excute some logic when the provider is disposed
  });

  return userService.getUsers();
});
