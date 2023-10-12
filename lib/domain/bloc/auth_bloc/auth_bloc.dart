import 'package:flutter_bloc/flutter_bloc.dart';

import '/data/repositories/app_repository.dart';
import '/data/repositories/auth_repository/auth_repo.dart';
import '/domain/exceptions/base_exception.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repo = AppRepository.instance.authRepository;

  //handling events
  AuthBloc() : super(LoginInitialState()) {
    on<LoginWithEmailAndPasswordEvent>(_loginButtonPressed);
    on<LoginWithGoogleEvent>(_loginWithGoogleEvent);
    on<LoginWithFacebookEvent>(_loginWithFacebookEvent);
  }

  //! Events Logic
  _loginButtonPressed(
      LoginWithEmailAndPasswordEvent event, Emitter<AuthState> state) async {
    try {
      emit(LoggingInState());
      await repo.logInWithEmailAndPassword(event.password, event.password);
      if (repo.isLoggedIn()) {
        emit(LoginSuccessState());
      }
    } on AppException catch (e) {
      emit(LoginFailState(e));
    } finally {
      emit(LoginInitialState());
    }
  }

  _loginWithGoogleEvent(LoginWithGoogleEvent event, Emitter<AuthState> emit) {}

  _loginWithFacebookEvent(
      LoginWithFacebookEvent event, Emitter<AuthState> emit) {}
}
