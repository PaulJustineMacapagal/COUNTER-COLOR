import 'package:flutter/material.dart';

Color changeColor(int c){
  if(c <= 10){
    return Colors.blue;
  }else if(c > 10 && c <= 15){
    return Colors.yellow;
  }else if(c > 15 && c <= 20){
    return Colors.red;
  }else{
    return const Color.fromARGB(255, 222, 151, 175);
  }
}
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  void increment(){
    setState(() {
      counter++;
    });
  }

  void decrement(){
    setState(() {
      counter--;
    });
  }

  void reset(){
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(child: Center(
      child: Column(children:[
      Text("$counter", style: 
      TextStyle(
      fontSize: 70.0, color: changeColor(counter),
      )),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(icon: const Icon(Icons.remove, size: 50.0),
        onPressed: decrement,
        ),
        IconButton(icon: const Icon(Icons.add, size: 50.0),
        onPressed: increment,
        ),
        IconButton(icon: const Icon(Icons.restart_alt_outlined, size: 50.0),
        onPressed: reset,
        ),],),],),),);
  }
}