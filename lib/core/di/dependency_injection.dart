import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/login/data/repo/login_repo_impl.dart';
import '../../features/login/domain/repo/login_repo.dart';
import '../../features/login/presentation/cubit/login_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {

  ///TODO: Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerFactory<ApiService>(() => ApiService(dio));
  ///TODO: loginRepo  & ApiService
  getIt.registerFactory<LoginRepo>(() => LoginRepoImpl(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

}