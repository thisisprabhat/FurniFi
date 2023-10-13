import 'package:freezed_annotation/freezed_annotation.dart';

import '/domain/exceptions/base_exception.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitialState;
  const factory AuthState.loggingIn() = LoggingInState;
  const factory AuthState.loginFailed(AppException error) = LogingFailedState;
  const factory AuthState.loginSuccess() = LogingSuccessState;
  const factory AuthState.alreadyLoggedIn() = UserAlreadyLoggedInState;
  const factory AuthState.noUserFound() = NoUserFoundState;
  const factory AuthState.logout() = LogoutState;
  const factory AuthState.logoutFailed(AppException e) = LogoutFailedState;
}
