import 'package:docdoc/features/sign_up/data/models/sign_up_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

//todo:request ===> دا المودل الي ببعته للسيرفر
part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  SignUpResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  final String? message;
  final SignUpDataModel? data;
  final bool? status;
  final int? code;

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) => _$SignUpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseModelToJson(this);

}
