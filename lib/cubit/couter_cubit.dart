import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CouterCubit extends Cubit<CounterStates> {
  CouterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamAIncreament(int num) {
    teamAPoints += num;
    emit(CounterAIncrementState());
  }

  void teamBIncreament(int num) {
    teamAPoints += num;
    emit(CounterBIncrementState());
  }
}
