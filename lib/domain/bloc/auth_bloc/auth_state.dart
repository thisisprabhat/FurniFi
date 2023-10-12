part of 'auth_bloc.dart';

class AuthState {}

class LoginInitialState extends AuthState {}

class LoggingInState extends AuthState {}

class LoginFailState extends AuthState {
  final AppException error;

  LoginFailState(this.error);
}

class LoginSuccessState extends AuthState {}
