// The code snippet defines a Flutter widget called HomePage that displays two counters for two teams (Team A and Team B). The counters can be incremented by 1, 2, or 3 points using buttons, and there is also a reset button to
// The code snippet defines a Flutter widget called HomePage that displays two counters for two teams (Team A and Team B). The counters can be incremented by 1, 2, or 3 points using buttons, and there is also a reset button to
import 'package:basketball_points_app/cubit/counter_cubit.dart';
import 'package:basketball_points_app/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // int teamAPoints = 0;
  // int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Counter Points',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAIncrement}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(buttonNumber: 1, team: 'A');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(180, 50),
                          ),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(buttonNumber: 2, team: 'A');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(180, 50),
                          ),
                          child: const Text(
                            'Add 2 points',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(buttonNumber: 3, team: 'A');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(180, 50),
                          ),
                          child: const Text(
                            'Add 3 points',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBIncrement}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(buttonNumber: 1, team: 'B');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(180, 50),
                          ),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(buttonNumber: 2, team: 'B');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(180, 50),
                          ),
                          child: const Text(
                            'Add 2 points',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIcrement(buttonNumber: 3, team: 'B');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: const Size(180, 50),
                          ),
                          child: const Text(
                            'Add 3 points',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).teamIcrement(team: 'C', buttonNumber: 0);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: const Size(180, 50),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }, listener: (context, state) {
      if (state is TeamAIcrement) {
      } else if (state is TeamBIcrement) {}
    });
  }
}
