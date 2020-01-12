import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/bloc/counter_bloc.dart';
import 'package:flutter_bloc_app/pages/counter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[ 
            ChangeNotifierProvider<CounterBloc>.value(
            value: CounterBloc(),
           ),
           ],
           child:MaterialApp(
                    home: CounterPage(),
    ),
    );
  }
}


