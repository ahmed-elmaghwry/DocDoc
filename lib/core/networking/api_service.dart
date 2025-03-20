import 'package:dio/dio.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_response_model.dart';

import 'package:retrofit/retrofit.dart';

import '../../features/login/data/model/login_request_model.dart';
import '../../features/login/data/model/login_response_model.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
///todo:login ===> دا البوست الي ببعت فيه البيانات
  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(
  {@Body() required LoginRequestModel loginRequestModel}
      );
  ///todo:register ===> دا البوست الي ببعت فيه البيانات
  @POST(ApiConstants.register)
  Future<SignUpResponseModel> signUp(
      {@Body() required SignUpRequestModel signUpRequestModel}
      );
}