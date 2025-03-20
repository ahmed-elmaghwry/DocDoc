import 'package:docdoc/features/login/data/model/login_request_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repo/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  /// TODO : بعرف اللوجين ريبو بتاعي اول حاجه في الكيوبت
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  /// ********************************************************************************************************************
  /// TODO :  جوا الكيوبت بعمل  الفيلد بتاعتي و كمان الفورم   عشان اقلل العبأ علي
  ///TODO : [ui] بتاعي
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /// ********************************************************************************************************************

  void emitLoginStates() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(
        loginRequestModel: LoginRequestModel(
      email: emailController.text,
      password: passwordController.text,
    ));
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(dataResponse: loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
