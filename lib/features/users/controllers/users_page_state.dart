import 'package:flutter_mvvm_clean_architecture/core/error/failure.dart';
import 'package:flutter_mvvm_clean_architecture/domain/models/user.dart';

///plain dart 3 sealed classes, no code generation needed.
///use `switch` on the state for exhaustive pattern matching.
sealed class UsersState {
  const UsersState();
}

///Initial
final class UsersInitial extends UsersState {
  const UsersInitial();
}

///Loading
final class UsersLoading extends UsersState {
  const UsersLoading();
}

///Data
final class UsersData extends UsersState {
  final List<User> users;
  const UsersData(this.users);
}

///Error
final class UsersError extends UsersState {
  final Failure failure;
  const UsersError(this.failure);
}

extension UsersStateGetters on UsersState {
  bool get isLoading => this is UsersLoading;
}
