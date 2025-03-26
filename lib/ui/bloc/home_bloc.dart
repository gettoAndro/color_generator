import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial(color: Color.fromRGBO(255, 255, 255, 1))) {
    on<OnColorGenerateEvent>((event, emit) {
      final randomColor = Color.fromRGBO(
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256), 1
      );
      emit(HomeInitial(color: randomColor));
    });
  }
}
