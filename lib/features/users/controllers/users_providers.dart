import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';
import 'package:flutter_mvvm_clean_architecture/domain/services/users_service.dart';

///for simple read-only screens a FutureProvider is enough, no Notifier needed.
///failures are thrown so they land in `AsyncError`.

///call ref.keepAlive() to cache the value in case of no listeners
final usersProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  final usersService = ref.watch(usersServiceProvider);

  ref.keepAlive();
  ref.onDispose(() {
    ///execute some logic when the provider is disposed
  });

  return usersService.getUsers().getOrElse((failure) => throw failure).run();
});

///used .family constructor to pass args to the provider
///in case of multiple args pass a record e.g. `family<User, ({String id, bool cached})>`
final userProvider = FutureProvider.autoDispose.family<User, String>((ref, id) async {
  ref.onDispose(() {
    ///execute some logic when the provider is disposed
  });

  final usersService = ref.watch(usersServiceProvider);
  return usersService.getUserById(id).getOrElse((failure) => throw failure).run();
});
