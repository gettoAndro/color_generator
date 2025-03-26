part of 'home_bloc.dart';

@immutable
sealed class HomeState {
  final Color? color;

  const HomeState({required this.color});
}

final class HomeInitial extends HomeState {
  const HomeInitial({required super.color});
}
