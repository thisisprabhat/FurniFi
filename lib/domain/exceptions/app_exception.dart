import 'base_exception.dart';

class AuthenticationException extends AppException {
  AuthenticationException(
      {super.title = "Authentication Failed",
      super.message = "Authentication Failed, try again"});
}

class InternetSocketException extends AppException {
  final String? errorMessage;
  InternetSocketException(this.errorMessage)
      : super(
          title: "Network Problem",
          message: errorMessage ??
              "There is some issue with your wifi or your mobile internet",
        );
}

class ApiHttpExceptionException extends AppException {
  final String? errorMessage;
  ApiHttpExceptionException(this.errorMessage)
      : super(
          title: "Network Problem",
          message: errorMessage,
        );
}

class DataFormatException extends AppException {
  final String? errorMessage;
  DataFormatException(this.errorMessage)
      : super(
          title: "Format Exception",
          message: errorMessage,
        );
}

class ApiTimeOutException extends AppException {
  final String? errorMessage;
  ApiTimeOutException(this.errorMessage)
      : super(
          title: "TimeOut Exception",
          message: errorMessage,
        );
}

class BadRequestException extends AppException {
  BadRequestException()
      : super(
          title: "Bad Request",
          message: "Your request is invalid.",
        );
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message, String? url])
      : super(
          title: "Unauthorized",
          message: "Your API key is wrong.",
        );
}

class ForbiddenException extends AppException {
  ForbiddenException([String? message, String? url])
      : super(
          title: "Forbidden",
          message:
              "You have reached your daily quota, the next reset is at 00:00 UTC.",
        );
}

class NotFoundException extends AppException {
  NotFoundException([String? message, String? url])
      : super(
          title: "Not Found",
          message: "No Results Found!",
        );
}

class TooManyRequestException extends AppException {
  TooManyRequestException([String? message, String? url])
      : super(
          title: "Too Many Requests",
          message:
              "You have made more requests per second than you are allowed.",
        );
}

class InternalServerException extends AppException {
  InternalServerException([String? message, String? url])
      : super(
          title: "Internal Server Error",
          message: "We had a problem with our server. Try again later.",
        );
}

class ServiceUnavailableException extends AppException {
  ServiceUnavailableException([String? message, String? url])
      : super(
          title: "Service Unavailable",
          message:
              "We're temporarily offline for maintenance. Please try again later.",
        );
}
