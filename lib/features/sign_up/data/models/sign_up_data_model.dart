import 'package:freezed_annotation/freezed_annotation.dart';

//todo:datamodel  ===> دا المودل الي تبع ريسبونس مودل

part 'sign_up_data_model.g.dart';
@JsonSerializable()
class SignUpDataModel {
  SignUpDataModel({
    required this.token,
    required this.username,
  });

  final String? token;
  final String? username;

  factory SignUpDataModel.fromJson(Map<String, dynamic> json) => _$SignUpDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDataModelToJson(this);

}
