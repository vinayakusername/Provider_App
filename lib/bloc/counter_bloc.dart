import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/bloc/non_listenable_bloc.dart';

class CounterBloc extends ChangeNotifier{

  // int _counter =0;

  // int get counter => _counter;

  // set counter(int val){
  //   _counter= val;
  //   notifyListeners();
  // }

   returnIncrement(){
    // _counter++;
     new NonListenableBloc().increment();
     notifyListeners();
   }

   returnDecrement(){
     //_counter--;
     new NonListenableBloc().decrement();
     notifyListeners();
   }
}