import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../user_repository/user_repo.dart';
import '/domain/exceptions/exception_handler.dart';
import '/data/models/models.dart';

import 'auth_repo.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  late UserRepository _userRepository; //TODO: assign a User repo object here
  @override
  User get loggedFirebaseUser => _firebaseAuth.currentUser!;

  /// Creates a new user with the provided [information]
  @override
  Future<void> signUp(UserModel newUser, String password) async {
    try {
      var userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: newUser.email,
        password: password,
      );
      // Add id for new user
      newUser = newUser.copyWith(id: userCredential.user!.uid);

      // Create new doc in users collection
      await _userRepository.addUserData(newUser);
    } catch (e) {
      AppExceptionHandler.handleAuthException(e);
    }
  }

  /// Signs in with the provided [email] and [password].
  @override
  Future<void> logInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      AppExceptionHandler.handleAuthException(e);
    }
  }

  /// Starts the Sign In with Google signIn.
  @override
  Future<void> logInWithGoogle() async {
    try {
      final googleUser =
          await (_googleSignIn.signIn() as Future<GoogleSignInAccount>);
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      AppExceptionHandler.handleAuthException(e);
    }
  }

  @override
  Future<void> logInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      _firebaseAuth.signInWithCredential(facebookAuthCredential);
    } catch (e) {
      AppExceptionHandler.handleAuthException(e);
    }
  }

  @override
  bool isLoggedIn() => _firebaseAuth.currentUser != null;

  /// Signs out the current user
  @override
  Future<void> logOut() async {
    await _firebaseAuth
        .signOut()
        .catchError(AppExceptionHandler.handleAuthException);
  }

  ///Singleton factory
  static final FirebaseAuthRepository _instance =
      FirebaseAuthRepository._internal();

  factory FirebaseAuthRepository() {
    return _instance;
  }

  FirebaseAuthRepository._internal();
}
