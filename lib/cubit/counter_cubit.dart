import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());
  int teamAIncrement = 0;
  int teamBIncrement = 0;
  void teamIcrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAIncrement += buttonNumber;
      emit(TeamAIcrement());
    } else if (team == 'B') {
      teamBIncrement += buttonNumber;
      emit(TeamBIcrement());
    } else if (team == 'C') {
      teamAIncrement = 0;
      teamBIncrement = 0;
      emit(Reset());
    }
  }
}
