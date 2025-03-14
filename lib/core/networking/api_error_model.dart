import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  List<dynamic>? data;

  @JsonKey(name: 'status')
  bool? status;

  @JsonKey(name: 'code')
  int code;

  ApiErrorModel(
      {required this.message, this.data, this.status, required this.code});

  // fromJson constructor
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
