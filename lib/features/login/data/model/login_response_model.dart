import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  LoginData? data;

  @JsonKey(name: 'status')
  bool? status;

  @JsonKey(name: 'code')
  int code;

  LoginResponseModel({
    required this.message,
    this.data,
    this.status,
    required this.code
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}

@JsonSerializable()
class LoginData {
  @JsonKey(name: 'token')
  String token;

  @JsonKey(name: 'username')
  String userName;

  LoginData({
    required this.token,
    required this.userName
  });

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}