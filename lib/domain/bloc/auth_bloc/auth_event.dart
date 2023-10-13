import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkLoggedInUser() = CheckLoggedInUserEvent;
  const factory AuthEvent.loginWithFacebook() = LoginWithFacebookEvent;
  const factory AuthEvent.loginWithGoogle() = LoginWithGoogleEvent;
  const factory AuthEvent.loggingIn() = LoggingInEvent;
  const factory AuthEvent.logout() = LogoutEvent;
  const factory AuthEvent.loginWithEmailAndPassword({
    required String email,
    required String password,
  }) = LoginWithEmailAndPasswordEvent;
}
