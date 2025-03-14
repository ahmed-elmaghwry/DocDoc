import 'package:docdoc/features/login/data/model/login_request_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repo/login_repo.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginStates({required LoginRequestModel loginRequestModel}) async {


    emit(const LoginState.loading());


    final response =
        await _loginRepo.login(loginRequestModel: loginRequestModel);
    response.when(success: (loginResponse) {
      emit(LoginState.success(dataResponse: loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });


  }
}
