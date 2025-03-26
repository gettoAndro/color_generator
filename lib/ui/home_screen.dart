import 'package:color_generator/ui/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            context.read<HomeBloc>().add(OnColorGenerateEvent());
          },
          child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) => AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                color: state.color,
                child: const Center(
                  child: Text("Hello there"),
                ),
              ),
          ),
      ),
    );
  }
}
