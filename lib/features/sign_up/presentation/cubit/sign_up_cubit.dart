import 'package:bloc/bloc.dart';
import 'package:docdoc/features/sign_up/domain/repositories/sign_up_repo.dart';
import 'package:docdoc/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/sign_up_request_model.dart';



class SignUpCubit extends Cubit<SignUpState> {
  /// TODO :sign up repo is the first thing in the cubit
  final SignUpRepo _signUpRepo;

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  /// ********************************************************************************************************************
  /// TODO :  جوا الكيوبت بعمل  الفيلد بتاعتي و كمان الفورم   عشان اقلل العبأ علي
  ///TODO : [ui] بتاعي
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  /// ********************************************************************************************************************

  void emitSignUpStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(
      signUpRequestModel: SignUpRequestModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: 0,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
      ),
    );
    response.when(success: (dataResponse) {
      emit(SignUpState.success(dataResponse: dataResponse));
    }, failure: (ErrorHandler errorHandler) {
      emit(SignUpState.error(error: errorHandler.apiErrorModel.message));
    });
  }
}
