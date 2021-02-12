import 'core/viewmodels/home_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'core/services/api.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => HomeModel());
}
