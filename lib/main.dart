import 'package:counterapp/screens/count.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        title: const Text('Counter Application'),),
    body: const CounterApp(),
    ),
  ));
}