import 'package:counterapp/screens/count.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        title: const Text('Counter Application', style: TextStyle(fontFamily: 'Daydream',
      fontSize: 32.0, color: Colors.white,),),),
    body: const CounterApp(),
    ),
  ));
}