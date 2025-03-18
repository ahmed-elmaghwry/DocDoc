import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/login/data/model/login_response_model.dart';
import 'package:docdoc/features/login/domain/repo/login_repo.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../model/login_request_model.dart';

class LoginRepoImpl extends LoginRepo {
  final ApiService _apiService;

  LoginRepoImpl(this._apiService);

  @override
  Future<ApiResult<LoginResponseModel>> login(
      {required LoginRequestModel loginRequestModel}) async {
    try {
      final response =
          await _apiService.login(loginRequestModel: loginRequestModel);
      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.failure(errorHandler: ErrorHandler.handle(e));
    }
  }
}
