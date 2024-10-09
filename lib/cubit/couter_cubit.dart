import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamAIncreament(int num) {
    teamAPoints += num;
    emit(CounterAIncrementState());
  }

  void teamBIncreament(int num) {
    teamBPoints += num;
    emit(CounterBIncrementState());
  }

  void reset() {
    teamBPoints = 0;
    teamAPoints = 0;
    emit(resetCounter());
  }
}
