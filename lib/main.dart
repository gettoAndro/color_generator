import 'package:color_generator/ui/bloc/home_bloc.dart';
import 'package:color_generator/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(create:(context) => di<HomeBloc>(), child: HomeScreen(),),
    );
  }
}
