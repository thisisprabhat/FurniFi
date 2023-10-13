// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialStateImplCopyWith<$Res> {
  factory _$$AuthInitialStateImplCopyWith(_$AuthInitialStateImpl value,
          $Res Function(_$AuthInitialStateImpl) then) =
      __$$AuthInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialStateImpl>
    implements _$$AuthInitialStateImplCopyWith<$Res> {
  __$$AuthInitialStateImplCopyWithImpl(_$AuthInitialStateImpl _value,
      $Res Function(_$AuthInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialStateImpl implements AuthInitialState {
  const _$AuthInitialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
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
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitialState implements AuthState {
  const factory AuthInitialState() = _$AuthInitialStateImpl;
}

/// @nodoc
abstract class _$$LoggingInStateImplCopyWith<$Res> {
  factory _$$LoggingInStateImplCopyWith(_$LoggingInStateImpl value,
          $Res Function(_$LoggingInStateImpl) then) =
      __$$LoggingInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingInStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggingInStateImpl>
    implements _$$LoggingInStateImplCopyWith<$Res> {
  __$$LoggingInStateImplCopyWithImpl(
      _$LoggingInStateImpl _value, $Res Function(_$LoggingInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingInStateImpl implements LoggingInState {
  const _$LoggingInStateImpl();

  @override
  String toString() {
    return 'AuthState.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class LoggingInState implements AuthState {
  const factory LoggingInState() = _$LoggingInStateImpl;
}

/// @nodoc
abstract class _$$LogingFailedStateImplCopyWith<$Res> {
  factory _$$LogingFailedStateImplCopyWith(_$LogingFailedStateImpl value,
          $Res Function(_$LogingFailedStateImpl) then) =
      __$$LogingFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException error});
}

/// @nodoc
class __$$LogingFailedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogingFailedStateImpl>
    implements _$$LogingFailedStateImplCopyWith<$Res> {
  __$$LogingFailedStateImplCopyWithImpl(_$LogingFailedStateImpl _value,
      $Res Function(_$LogingFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LogingFailedStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$LogingFailedStateImpl implements LogingFailedState {
  const _$LogingFailedStateImpl(this.error);

  @override
  final AppException error;

  @override
  String toString() {
    return 'AuthState.loginFailed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogingFailedStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogingFailedStateImplCopyWith<_$LogingFailedStateImpl> get copyWith =>
      __$$LogingFailedStateImplCopyWithImpl<_$LogingFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return loginFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return loginFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class LogingFailedState implements AuthState {
  const factory LogingFailedState(final AppException error) =
      _$LogingFailedStateImpl;

  AppException get error;
  @JsonKey(ignore: true)
  _$$LogingFailedStateImplCopyWith<_$LogingFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogingSuccessStateImplCopyWith<$Res> {
  factory _$$LogingSuccessStateImplCopyWith(_$LogingSuccessStateImpl value,
          $Res Function(_$LogingSuccessStateImpl) then) =
      __$$LogingSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogingSuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogingSuccessStateImpl>
    implements _$$LogingSuccessStateImplCopyWith<$Res> {
  __$$LogingSuccessStateImplCopyWithImpl(_$LogingSuccessStateImpl _value,
      $Res Function(_$LogingSuccessStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogingSuccessStateImpl implements LogingSuccessState {
  const _$LogingSuccessStateImpl();

  @override
  String toString() {
    return 'AuthState.loginSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogingSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LogingSuccessState implements AuthState {
  const factory LogingSuccessState() = _$LogingSuccessStateImpl;
}

/// @nodoc
abstract class _$$UserAlreadyLoggedInStateImplCopyWith<$Res> {
  factory _$$UserAlreadyLoggedInStateImplCopyWith(
          _$UserAlreadyLoggedInStateImpl value,
          $Res Function(_$UserAlreadyLoggedInStateImpl) then) =
      __$$UserAlreadyLoggedInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAlreadyLoggedInStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserAlreadyLoggedInStateImpl>
    implements _$$UserAlreadyLoggedInStateImplCopyWith<$Res> {
  __$$UserAlreadyLoggedInStateImplCopyWithImpl(
      _$UserAlreadyLoggedInStateImpl _value,
      $Res Function(_$UserAlreadyLoggedInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAlreadyLoggedInStateImpl implements UserAlreadyLoggedInState {
  const _$UserAlreadyLoggedInStateImpl();

  @override
  String toString() {
    return 'AuthState.alreadyLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAlreadyLoggedInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return alreadyLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return alreadyLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (alreadyLoggedIn != null) {
      return alreadyLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return alreadyLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return alreadyLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (alreadyLoggedIn != null) {
      return alreadyLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyLoggedInState implements AuthState {
  const factory UserAlreadyLoggedInState() = _$UserAlreadyLoggedInStateImpl;
}

/// @nodoc
abstract class _$$NoUserFoundStateImplCopyWith<$Res> {
  factory _$$NoUserFoundStateImplCopyWith(_$NoUserFoundStateImpl value,
          $Res Function(_$NoUserFoundStateImpl) then) =
      __$$NoUserFoundStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoUserFoundStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NoUserFoundStateImpl>
    implements _$$NoUserFoundStateImplCopyWith<$Res> {
  __$$NoUserFoundStateImplCopyWithImpl(_$NoUserFoundStateImpl _value,
      $Res Function(_$NoUserFoundStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoUserFoundStateImpl implements NoUserFoundState {
  const _$NoUserFoundStateImpl();

  @override
  String toString() {
    return 'AuthState.noUserFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoUserFoundStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return noUserFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return noUserFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return noUserFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return noUserFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound(this);
    }
    return orElse();
  }
}

abstract class NoUserFoundState implements AuthState {
  const factory NoUserFoundState() = _$NoUserFoundStateImpl;
}

/// @nodoc
abstract class _$$LogoutStateImplCopyWith<$Res> {
  factory _$$LogoutStateImplCopyWith(
          _$LogoutStateImpl value, $Res Function(_$LogoutStateImpl) then) =
      __$$LogoutStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutStateImpl>
    implements _$$LogoutStateImplCopyWith<$Res> {
  __$$LogoutStateImplCopyWithImpl(
      _$LogoutStateImpl _value, $Res Function(_$LogoutStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStateImpl implements LogoutState {
  const _$LogoutStateImpl();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutState implements AuthState {
  const factory LogoutState() = _$LogoutStateImpl;
}

/// @nodoc
abstract class _$$LogoutFailedStateImplCopyWith<$Res> {
  factory _$$LogoutFailedStateImplCopyWith(_$LogoutFailedStateImpl value,
          $Res Function(_$LogoutFailedStateImpl) then) =
      __$$LogoutFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException e});
}

/// @nodoc
class __$$LogoutFailedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutFailedStateImpl>
    implements _$$LogoutFailedStateImplCopyWith<$Res> {
  __$$LogoutFailedStateImplCopyWithImpl(_$LogoutFailedStateImpl _value,
      $Res Function(_$LogoutFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$LogoutFailedStateImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$LogoutFailedStateImpl implements LogoutFailedState {
  const _$LogoutFailedStateImpl(this.e);

  @override
  final AppException e;

  @override
  String toString() {
    return 'AuthState.logoutFailed(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFailedStateImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFailedStateImplCopyWith<_$LogoutFailedStateImpl> get copyWith =>
      __$$LogoutFailedStateImplCopyWithImpl<_$LogoutFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(AppException error) loginFailed,
    required TResult Function() loginSuccess,
    required TResult Function() alreadyLoggedIn,
    required TResult Function() noUserFound,
    required TResult Function() logout,
    required TResult Function(AppException e) logoutFailed,
  }) {
    return logoutFailed(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(AppException error)? loginFailed,
    TResult? Function()? loginSuccess,
    TResult? Function()? alreadyLoggedIn,
    TResult? Function()? noUserFound,
    TResult? Function()? logout,
    TResult? Function(AppException e)? logoutFailed,
  }) {
    return logoutFailed?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(AppException error)? loginFailed,
    TResult Function()? loginSuccess,
    TResult Function()? alreadyLoggedIn,
    TResult Function()? noUserFound,
    TResult Function()? logout,
    TResult Function(AppException e)? logoutFailed,
    required TResult orElse(),
  }) {
    if (logoutFailed != null) {
      return logoutFailed(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitialState value) initial,
    required TResult Function(LoggingInState value) loggingIn,
    required TResult Function(LogingFailedState value) loginFailed,
    required TResult Function(LogingSuccessState value) loginSuccess,
    required TResult Function(UserAlreadyLoggedInState value) alreadyLoggedIn,
    required TResult Function(NoUserFoundState value) noUserFound,
    required TResult Function(LogoutState value) logout,
    required TResult Function(LogoutFailedState value) logoutFailed,
  }) {
    return logoutFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitialState value)? initial,
    TResult? Function(LoggingInState value)? loggingIn,
    TResult? Function(LogingFailedState value)? loginFailed,
    TResult? Function(LogingSuccessState value)? loginSuccess,
    TResult? Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult? Function(NoUserFoundState value)? noUserFound,
    TResult? Function(LogoutState value)? logout,
    TResult? Function(LogoutFailedState value)? logoutFailed,
  }) {
    return logoutFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitialState value)? initial,
    TResult Function(LoggingInState value)? loggingIn,
    TResult Function(LogingFailedState value)? loginFailed,
    TResult Function(LogingSuccessState value)? loginSuccess,
    TResult Function(UserAlreadyLoggedInState value)? alreadyLoggedIn,
    TResult Function(NoUserFoundState value)? noUserFound,
    TResult Function(LogoutState value)? logout,
    TResult Function(LogoutFailedState value)? logoutFailed,
    required TResult orElse(),
  }) {
    if (logoutFailed != null) {
      return logoutFailed(this);
    }
    return orElse();
  }
}

abstract class LogoutFailedState implements AuthState {
  const factory LogoutFailedState(final AppException e) =
      _$LogoutFailedStateImpl;

  AppException get e;
  @JsonKey(ignore: true)
  _$$LogoutFailedStateImplCopyWith<_$LogoutFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
