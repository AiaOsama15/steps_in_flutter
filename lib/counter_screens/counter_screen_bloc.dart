import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/cubit/cubit.dart';
import 'package:test_/cubit/states.dart';

////single file to show counter with statefullWidget
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CounterCubit(CounterCubit as CounterStates, CounterStates),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is CounterPlus) {
            print('CounterPlus is');
            print(state);
          }
          if (state is CounterMinus) {
            print('CounterMinus is');
            print(state);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Counter',
                style: TextStyle(fontSize: 20),
              ),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //button1
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(20)),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
                        onPressed: () {
                          CounterCubit.get(context).minus();
                        },
                        child: const Text(
                          ' Minus ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    //Text output
                    Text(
                      '${CounterCubit.get(context).counter}',
                      style: const TextStyle(fontSize: 29, color: Colors.black),
                    )
                    //button2
                    ,
                    Container(
                      width: 100,
                      height: 80,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
                        onPressed: () {
                          CounterCubit.get(context).plus();
                        },
                        child: const Text(
                          ' Plus ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
