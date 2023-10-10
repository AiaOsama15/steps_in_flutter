import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/cubit/states.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  //obj
  // static get()=>bloco
 
  int counter = 0;

  CounterCubit(super.initialState, Type counterStates);
  static CounterCubit get(context)=>BlocProvider.of(context);
  plus() {
    counter += 1;
    emit(CounterPlus());
  }
   minus() {
    counter -= 1;
     emit(CounterMinus());
  }
}
