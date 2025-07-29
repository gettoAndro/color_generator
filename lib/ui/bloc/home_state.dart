part of 'home_bloc.dart';

@immutable
class HomeState {
  final Color color;

  const HomeState({this.color = const Color.fromRGBO(255, 255, 255, 1)});

  HomeState copyWith({Color? color}) => HomeState(color: color ?? this.color);
}
