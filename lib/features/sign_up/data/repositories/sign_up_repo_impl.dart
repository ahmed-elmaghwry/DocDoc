import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_request_model.dart';
import 'package:docdoc/features/sign_up/data/models/sign_up_response_model.dart';
import 'package:docdoc/features/sign_up/domain/repositories/sign_up_repo.dart';

import '../../../../core/networking/api_error_handler.dart';

class SignUpRepoImpl extends SignUpRepo{
  SignUpRepoImpl(this._apiService);
final ApiService _apiService;
  @override
  Future<ApiResult<SignUpResponseModel>> signUp({required SignUpRequestModel signUpRequestModel}) async{

   try{
     final response =
         await _apiService.signUp(signUpRequestModel: signUpRequestModel);
     return ApiResult.success(data: response);
   }catch(e){

      return ApiResult.failure(errorHandler: ErrorHandler.handle(e));
   }
  }



}