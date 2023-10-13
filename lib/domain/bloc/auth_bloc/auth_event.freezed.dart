// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckLoggedInUserEventImplCopyWith<$Res> {
  factory _$$CheckLoggedInUserEventImplCopyWith(
          _$CheckLoggedInUserEventImpl value,
          $Res Function(_$CheckLoggedInUserEventImpl) then) =
      __$$CheckLoggedInUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoggedInUserEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckLoggedInUserEventImpl>
    implements _$$CheckLoggedInUserEventImplCopyWith<$Res> {
  __$$CheckLoggedInUserEventImplCopyWithImpl(
      _$CheckLoggedInUserEventImpl _value,
      $Res Function(_$CheckLoggedInUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckLoggedInUserEventImpl implements CheckLoggedInUserEvent {
  const _$CheckLoggedInUserEventImpl();

  @override
  String toString() {
    return 'AuthEvent.checkLoggedInUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLoggedInUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return checkLoggedInUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return checkLoggedInUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (checkLoggedInUser != null) {
      return checkLoggedInUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) {
    return checkLoggedInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) {
    return checkLoggedInUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (checkLoggedInUser != null) {
      return checkLoggedInUser(this);
    }
    return orElse();
  }
}

abstract class CheckLoggedInUserEvent implements AuthEvent {
  const factory CheckLoggedInUserEvent() = _$CheckLoggedInUserEventImpl;
}

/// @nodoc
abstract class _$$LoginWithFacebookEventImplCopyWith<$Res> {
  factory _$$LoginWithFacebookEventImplCopyWith(
          _$LoginWithFacebookEventImpl value,
          $Res Function(_$LoginWithFacebookEventImpl) then) =
      __$$LoginWithFacebookEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithFacebookEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithFacebookEventImpl>
    implements _$$LoginWithFacebookEventImplCopyWith<$Res> {
  __$$LoginWithFacebookEventImplCopyWithImpl(
      _$LoginWithFacebookEventImpl _value,
      $Res Function(_$LoginWithFacebookEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithFacebookEventImpl implements LoginWithFacebookEvent {
  const _$LoginWithFacebookEventImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithFacebookEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return loginWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return loginWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) {
    return loginWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class LoginWithFacebookEvent implements AuthEvent {
  const factory LoginWithFacebookEvent() = _$LoginWithFacebookEventImpl;
}

/// @nodoc
abstract class _$$LoginWithGoogleEventImplCopyWith<$Res> {
  factory _$$LoginWithGoogleEventImplCopyWith(_$LoginWithGoogleEventImpl value,
          $Res Function(_$LoginWithGoogleEventImpl) then) =
      __$$LoginWithGoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithGoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithGoogleEventImpl>
    implements _$$LoginWithGoogleEventImplCopyWith<$Res> {
  __$$LoginWithGoogleEventImplCopyWithImpl(_$LoginWithGoogleEventImpl _value,
      $Res Function(_$LoginWithGoogleEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithGoogleEventImpl implements LoginWithGoogleEvent {
  const _$LoginWithGoogleEventImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithGoogleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class LoginWithGoogleEvent implements AuthEvent {
  const factory LoginWithGoogleEvent() = _$LoginWithGoogleEventImpl;
}

/// @nodoc
abstract class _$$LoggingInEventImplCopyWith<$Res> {
  factory _$$LoggingInEventImplCopyWith(_$LoggingInEventImpl value,
          $Res Function(_$LoggingInEventImpl) then) =
      __$$LoggingInEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoggingInEventImpl>
    implements _$$LoggingInEventImplCopyWith<$Res> {
  __$$LoggingInEventImplCopyWithImpl(
      _$LoggingInEventImpl _value, $Res Function(_$LoggingInEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingInEventImpl implements LoggingInEvent {
  const _$LoggingInEventImpl();

  @override
  String toString() {
    return 'AuthEvent.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingInEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
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
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class LoggingInEvent implements AuthEvent {
  const factory LoggingInEvent() = _$LoggingInEventImpl;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
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
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
abstract class _$$LoginWithEmailAndPasswordEventImplCopyWith<$Res> {
  factory _$$LoginWithEmailAndPasswordEventImplCopyWith(
          _$LoginWithEmailAndPasswordEventImpl value,
          $Res Function(_$LoginWithEmailAndPasswordEventImpl) then) =
      __$$LoginWithEmailAndPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginWithEmailAndPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithEmailAndPasswordEventImpl>
    implements _$$LoginWithEmailAndPasswordEventImplCopyWith<$Res> {
  __$$LoginWithEmailAndPasswordEventImplCopyWithImpl(
      _$LoginWithEmailAndPasswordEventImpl _value,
      $Res Function(_$LoginWithEmailAndPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithEmailAndPasswordEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailAndPasswordEventImpl
    implements LoginWithEmailAndPasswordEvent {
  const _$LoginWithEmailAndPasswordEventImpl(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailAndPasswordEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailAndPasswordEventImplCopyWith<
          _$LoginWithEmailAndPasswordEventImpl>
      get copyWith => __$$LoginWithEmailAndPasswordEventImplCopyWithImpl<
          _$LoginWithEmailAndPasswordEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkLoggedInUser,
    required TResult Function() loginWithFacebook,
    required TResult Function() loginWithGoogle,
    required TResult Function() loggingIn,
    required TResult Function() logout,
    required TResult Function(String email, String password)
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkLoggedInUser,
    TResult? Function()? loginWithFacebook,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loggingIn,
    TResult? Function()? logout,
    TResult? Function(String email, String password)? loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkLoggedInUser,
    TResult Function()? loginWithFacebook,
    TResult Function()? loginWithGoogle,
    TResult Function()? loggingIn,
    TResult Function()? logout,
    TResult Function(String email, String password)? loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckLoggedInUserEvent value) checkLoggedInUser,
    required TResult Function(LoginWithFacebookEvent value) loginWithFacebook,
    required TResult Function(LoginWithGoogleEvent value) loginWithGoogle,
    required TResult Function(LoggingInEvent value) loggingIn,
    required TResult Function(LogoutEvent value) logout,
    required TResult Function(LoginWithEmailAndPasswordEvent value)
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult? Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult? Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult? Function(LoggingInEvent value)? loggingIn,
    TResult? Function(LogoutEvent value)? logout,
    TResult? Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
  }) {
    return loginWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckLoggedInUserEvent value)? checkLoggedInUser,
    TResult Function(LoginWithFacebookEvent value)? loginWithFacebook,
    TResult Function(LoginWithGoogleEvent value)? loginWithGoogle,
    TResult Function(LoggingInEvent value)? loggingIn,
    TResult Function(LogoutEvent value)? logout,
    TResult Function(LoginWithEmailAndPasswordEvent value)?
        loginWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmailAndPassword != null) {
      return loginWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailAndPasswordEvent implements AuthEvent {
  const factory LoginWithEmailAndPasswordEvent(
      {required final String email,
      required final String password}) = _$LoginWithEmailAndPasswordEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginWithEmailAndPasswordEventImplCopyWith<
          _$LoginWithEmailAndPasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
