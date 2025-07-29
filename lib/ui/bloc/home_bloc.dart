import 'dart:math';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';

part 'home_state.dart';

const _maxColorValue = 256;

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(const HomeState()) {
    on<OnColorGenerateEvent>((event, emit) {
      final random = Random();
      final randomColor = Color.fromRGBO(
          random.nextInt(_maxColorValue),
          random.nextInt(_maxColorValue),
          random.nextInt(_maxColorValue), 1);
      emit(state.copyWith(color: randomColor));
    });
  }
}
