import 'package:docdoc/core/networking/api_result.dart';

import '../../data/model/login_request_model.dart';
import '../../data/model/login_response_model.dart';

abstract class LoginRepo {
  Future<ApiResult<LoginResponseModel>> login({required LoginRequestModel loginRequestModel});
}