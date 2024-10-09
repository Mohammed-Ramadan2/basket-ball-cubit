import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:basketball_counter/cubit/couter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else if (state is CounterBIncrementState) {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        } else {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team E',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamAPoints',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncreament(1);
                          },
                          child: Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncreament(2);
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamAIncreament(3);
                          },
                          child: Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '$teamBPoints',
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamBIncreament(1);
                          },
                          child: Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamBIncreament(2);
                          },
                          child: Text(
                            'Add 2 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamBIncreament(3);
                          },
                          child: Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
