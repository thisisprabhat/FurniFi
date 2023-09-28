import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {required String id,
      required String firstName,
      required String lastName,
      required String email,
      required String phone,
      String? avatar}) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  const UserModel._();
  String get fullName => "$firstName $lastName";
}
