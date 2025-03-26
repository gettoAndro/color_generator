import 'package:color_generator/ui/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  di.registerFactory<HomeBloc>(() => HomeBloc());
}
