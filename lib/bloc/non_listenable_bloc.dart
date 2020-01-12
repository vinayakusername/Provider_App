//import 'package:flutter/material.dart';

class NonListenableBloc {

  int _counter =0;

  int get counter => _counter;

  set counter(int val){
    _counter= val;
   // notifyListeners();
  }

   increment(){
     _counter++;
     //notifyListeners();
   }

   decrement(){
     _counter--;
     //notifyListeners();
   }
}