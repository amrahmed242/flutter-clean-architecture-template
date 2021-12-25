import 'package:flutter_mvvm_clean_architecture/feature/users_feature/domain/services/users_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user.dart';

///used .family constructor to pass args to the provider
///in case of multible args create a custom data class that hold them.. this is a drawback
final usersProvider = FutureProvider.autoDispose.family<User, String>((ref, id) async {
  ref.onDispose(() {
    ///excute some logic when the provider is disposed
  });

  final userService = ref.watch(usersSerivceProvider);
  return userService.getUserById(id: id);
});
