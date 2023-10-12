import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

import '/core/utils/colored_log.dart';

import 'app_exception.dart';
import 'base_exception.dart';

class AppExceptionHandler {
  static throwException(Object error) {
    ColoredLog.red(error, name: 'AuthException');
    if (error is SocketException) {
      throw InternetSocketException(error.toString());
    } else if (error is FormatException) {
      throw DataFormatException(error.message);
    } else if (error is TimeoutException) {
      throw ApiTimeOutException(error.message);
    } else {
      return AppException();
    }
  }

  static handleAuthException(Object error) {
    ColoredLog.red(error, name: 'AuthException');
    if (error is SocketException) {
      throw InternetSocketException(error.toString());
    } else if (error is FirebaseAuthException) {
      throw AuthenticationException(title: error.code, message: error.message);
    } else if (error is TimeoutException) {
      throw ApiTimeOutException(error.message);
    } else {
      return AppException();
    }
  }
}
