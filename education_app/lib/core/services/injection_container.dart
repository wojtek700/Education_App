import 'package:education_app/src/on_boarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => OnBoardingCubit(cacheFirstTimer: sl(), checkIfUserIsFirstTimer: sl()),
  );
}
