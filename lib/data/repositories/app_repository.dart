import 'auth_repository/firebase_auth_repo.dart';

class AppRepository {
  get authRepository {
    return FirebaseAuthRepository();
  }

  /// Singleton factory Constructor
  AppRepository._internal();
  static AppRepository? _instance;
  static get instance => _instance ??= AppRepository._internal();
}
