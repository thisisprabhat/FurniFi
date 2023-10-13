import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '/data/repositories/app_repository.dart';
import '/data/repositories/auth_repository/auth_repo.dart';
import '/domain/exceptions/base_exception.dart';

import 'auth_event.dart';
import 'auth_state.dart';

export 'auth_event.dart';
export 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repo = AppRepository.instance.authRepository;

  //! Handling events
  AuthBloc() : super(const AuthState.initial()) {
    on<LoginWithEmailAndPasswordEvent>(_loginButtonPressed);
    on<LoginWithGoogleEvent>(_loginWithGoogleEvent);
    on<LoginWithFacebookEvent>(_loginWithFacebookEvent);
    on<CheckLoggedInUserEvent>(_checkLoggedInUser);
    on<LogoutEvent>(_logOut);
  }

  //! Events Logic
  _loginButtonPressed(
      LoginWithEmailAndPasswordEvent event, Emitter<AuthState> state) async {
    try {
      emit(const LoggingInState());
      await repo.logInWithEmailAndPassword(event.email, event.password);
      if (repo.isLoggedIn()) {
        emit(const AuthState.loginSuccess());
      }
    } on AppException catch (e) {
      e.print;
      emit(AuthState.loginFailed(e));
    } finally {
      emit(const AuthState.initial());
    }
  }

  _loginWithGoogleEvent(
      LoginWithGoogleEvent event, Emitter<AuthState> emit) async {
    try {
      await repo.logInWithGoogle();
    } on AppException catch (e) {
      e.print;
      emit(AuthState.loginFailed(e));
    }
  }

  _loginWithFacebookEvent(
      LoginWithFacebookEvent event, Emitter<AuthState> emit) async {
    try {
      await repo.logInWithFacebook();
    } on AppException catch (e) {
      e.print;
      emit(AuthState.loginFailed(e));
    }
  }

  FutureOr<void> _checkLoggedInUser(
      CheckLoggedInUserEvent event, Emitter<AuthState> emit) {
    if (repo.isLoggedIn()) {
      emit(const AuthState.alreadyLoggedIn());
    } else {
      emit(const AuthState.noUserFound());
    }
  }

  FutureOr<void> _logOut(LogoutEvent event, Emitter<AuthState> emit) async {
    try {
      await repo.logOut();
      emit(const AuthState.logout());
    } on AppException catch (e) {
      e.print;
      emit(AuthState.logoutFailed(e));
    }
  }
}
