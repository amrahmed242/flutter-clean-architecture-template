// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'users_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

  _UsersStateInitial initial() {
    return const _UsersStateInitial();
  }

  _UsersStateLoading loading() {
    return const _UsersStateLoading();
  }

  _UsersStateData data({required List<User> users}) {
    return _UsersStateData(
      users: users,
    );
  }

  _UsersStateError error([String? error]) {
    return _UsersStateError(
      error,
    );
  }
}

/// @nodoc
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersStateInitial value) initial,
    required TResult Function(_UsersStateLoading value) loading,
    required TResult Function(_UsersStateData value) data,
    required TResult Function(_UsersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersStateInitial value)? initial,
    TResult Function(_UsersStateLoading value)? loading,
    TResult Function(_UsersStateData value)? data,
    TResult Function(_UsersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;
}

/// @nodoc
abstract class _$UsersStateInitialCopyWith<$Res> {
  factory _$UsersStateInitialCopyWith(
          _UsersStateInitial value, $Res Function(_UsersStateInitial) then) =
      __$UsersStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsersStateInitialCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateInitialCopyWith<$Res> {
  __$UsersStateInitialCopyWithImpl(
      _UsersStateInitial _value, $Res Function(_UsersStateInitial) _then)
      : super(_value, (v) => _then(v as _UsersStateInitial));

  @override
  _UsersStateInitial get _value => super._value as _UsersStateInitial;
}

/// @nodoc
class _$_UsersStateInitial implements _UsersStateInitial {
  const _$_UsersStateInitial();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsersStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersStateInitial value) initial,
    required TResult Function(_UsersStateLoading value) loading,
    required TResult Function(_UsersStateData value) data,
    required TResult Function(_UsersStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersStateInitial value)? initial,
    TResult Function(_UsersStateLoading value)? loading,
    TResult Function(_UsersStateData value)? data,
    TResult Function(_UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UsersStateInitial implements UsersState {
  const factory _UsersStateInitial() = _$_UsersStateInitial;
}

/// @nodoc
abstract class _$UsersStateLoadingCopyWith<$Res> {
  factory _$UsersStateLoadingCopyWith(
          _UsersStateLoading value, $Res Function(_UsersStateLoading) then) =
      __$UsersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsersStateLoadingCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateLoadingCopyWith<$Res> {
  __$UsersStateLoadingCopyWithImpl(
      _UsersStateLoading _value, $Res Function(_UsersStateLoading) _then)
      : super(_value, (v) => _then(v as _UsersStateLoading));

  @override
  _UsersStateLoading get _value => super._value as _UsersStateLoading;
}

/// @nodoc
class _$_UsersStateLoading implements _UsersStateLoading {
  const _$_UsersStateLoading();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersStateInitial value) initial,
    required TResult Function(_UsersStateLoading value) loading,
    required TResult Function(_UsersStateData value) data,
    required TResult Function(_UsersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersStateInitial value)? initial,
    TResult Function(_UsersStateLoading value)? loading,
    TResult Function(_UsersStateData value)? data,
    TResult Function(_UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UsersStateLoading implements UsersState {
  const factory _UsersStateLoading() = _$_UsersStateLoading;
}

/// @nodoc
abstract class _$UsersStateDataCopyWith<$Res> {
  factory _$UsersStateDataCopyWith(
          _UsersStateData value, $Res Function(_UsersStateData) then) =
      __$UsersStateDataCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class __$UsersStateDataCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateDataCopyWith<$Res> {
  __$UsersStateDataCopyWithImpl(
      _UsersStateData _value, $Res Function(_UsersStateData) _then)
      : super(_value, (v) => _then(v as _UsersStateData));

  @override
  _UsersStateData get _value => super._value as _UsersStateData;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_UsersStateData(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
class _$_UsersStateData implements _UsersStateData {
  const _$_UsersStateData({required this.users});

  @override
  final List<User> users;

  @override
  String toString() {
    return 'UsersState.data(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersStateData &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$UsersStateDataCopyWith<_UsersStateData> get copyWith =>
      __$UsersStateDataCopyWithImpl<_UsersStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) data,
    required TResult Function(String? error) error,
  }) {
    return data(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersStateInitial value) initial,
    required TResult Function(_UsersStateLoading value) loading,
    required TResult Function(_UsersStateData value) data,
    required TResult Function(_UsersStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersStateInitial value)? initial,
    TResult Function(_UsersStateLoading value)? loading,
    TResult Function(_UsersStateData value)? data,
    TResult Function(_UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _UsersStateData implements UsersState {
  const factory _UsersStateData({required List<User> users}) =
      _$_UsersStateData;

  List<User> get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsersStateDataCopyWith<_UsersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsersStateErrorCopyWith<$Res> {
  factory _$UsersStateErrorCopyWith(
          _UsersStateError value, $Res Function(_UsersStateError) then) =
      __$UsersStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$UsersStateErrorCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateErrorCopyWith<$Res> {
  __$UsersStateErrorCopyWithImpl(
      _UsersStateError _value, $Res Function(_UsersStateError) _then)
      : super(_value, (v) => _then(v as _UsersStateError));

  @override
  _UsersStateError get _value => super._value as _UsersStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_UsersStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
class _$_UsersStateError implements _UsersStateError {
  const _$_UsersStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'UsersState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$UsersStateErrorCopyWith<_UsersStateError> get copyWith =>
      __$UsersStateErrorCopyWithImpl<_UsersStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsersStateInitial value) initial,
    required TResult Function(_UsersStateLoading value) loading,
    required TResult Function(_UsersStateData value) data,
    required TResult Function(_UsersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsersStateInitial value)? initial,
    TResult Function(_UsersStateLoading value)? loading,
    TResult Function(_UsersStateData value)? data,
    TResult Function(_UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UsersStateError implements UsersState {
  const factory _UsersStateError([String? error]) = _$_UsersStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UsersStateErrorCopyWith<_UsersStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
