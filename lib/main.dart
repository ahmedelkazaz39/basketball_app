import 'package:basketball_points_app/cubit/counter_states.dart';
import 'package:basketball_points_app/screens/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit.dart';
 
void main() {
  runApp(const BasketBallApp());
}

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => CounterCubit(),
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

