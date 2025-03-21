import 'package:json_annotation/json_annotation.dart';
//todo:request ===> دا المودل الي ببعته للسيرفر
part 'sign_up_request_model.g.dart';

@JsonSerializable()
class SignUpRequestModel {
  SignUpRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.password,
    required this.passwordConfirmation,
  });

  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String? passwordConfirmation;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);
}
