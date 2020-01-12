import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc_app/bloc/counter_bloc.dart';
import 'package:flutter_bloc_app/bloc/non_listenable_bloc.dart';
import 'package:flutter_bloc_app/widget/decrement.dart';
import 'package:flutter_bloc_app/widget/increment.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget
{

   @override
   Widget build(BuildContext context){

    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

     return Scaffold(
       body: Container(
         child: Center(
           child: Column(
             children: <Widget>[
            Text(//counterBloc.counter.toString(),
                    new NonListenableBloc().counter.toString(),
           style: TextStyle(fontSize: 62.0),),

            IncrementButton(),
            DecrementButton(),
             ],
         ),
       ),
     ),
     );

   }
}