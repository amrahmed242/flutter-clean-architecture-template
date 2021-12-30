import 'package:dartz/dartz.dart';
import 'package:flutter_mvvm_clean_architecture/core/utils/faliure.dart';
import 'package:flutter_mvvm_clean_architecture/feature/users_feature/data/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_page_state.freezed.dart';

extension UsersStateGetters on UsersState {
  bool get isLoading => this is _UsersStateLoading;
}

///run> "flutter pub run build_runner build" to generate state file
@freezed
abstract class UsersState with _$UsersState {
  ///Initial
  const factory UsersState.initial() = _UsersStateInitial;

  ///Loading
  const factory UsersState.loading() = _UsersStateLoading;

  ///Data
  const factory UsersState.data({required Either<Failure, List<User>> users}) =
      _UsersStateData;

  ///Error
  const factory UsersState.error([String? error]) = _UsersStateError;
}
