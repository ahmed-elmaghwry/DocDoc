// import 'package:DocDoc/core/networking/api_service.dart';
// import 'package:DocDoc/core/networking/dio_factory.dart';
// import 'package:DocDoc/features/login/data/repo/login_repo_impl.dart';
// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
//
// import '../../features/login/domain/repo/login_repo.dart';
// import '../../features/login/presentation/cubit/login_cubit.dart';
//
//
// final getIt = GetIt.instance;
// Future<void> setupGetIt() async {
//   // Dio & ApiService
//   Dio dio = DioFactory.getDio();
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//   // loginRepo  & ApiService
//   getIt.registerLazySingleton<LoginRepo>(() => LoginRepoImpl(getIt()));
//   getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
// }
//
