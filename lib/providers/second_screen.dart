import 'package:apiimplementation/providers/counter_screen.dart';
import 'package:apiimplementation/providers/first_Screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen of AppBar"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Count()),
          ElevatedButton(onPressed: (){
            context.read<Counter>().increment();
          }, child: Text("Counter")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("bACK"))
        ],
      ),
    );
  }
}
