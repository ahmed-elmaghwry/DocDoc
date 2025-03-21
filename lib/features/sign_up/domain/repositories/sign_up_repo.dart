
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_response_model.dart';

import '../../data/models/sign_up_request_model.dart';

abstract class SignUpRepo{
  Future<ApiResult<SignUpResponseModel>> signUp({required SignUpRequestModel signUpRequestModel});
}