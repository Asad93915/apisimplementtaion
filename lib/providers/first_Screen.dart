import 'package:apiimplementation/providers/counter_screen.dart';
import 'package:apiimplementation/providers/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("1ST sCREEN OF Providers",),
        leading:  Count(),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("You are pushing the button many times ${context.watch<Counter>().count}",style: TextStyle(color: Colors.black),)),
          Count(),

          SizedBox(height: 50.0,),
          ElevatedButton(onPressed: (){

            context.read<Counter>().increment();
          }, child: Text("cOUNTER",style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),)),
          SizedBox(height: 30.0,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text(
                "Next",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          ElevatedButton(onPressed: (){
            context.read<Counter>().reset();

          }, child: Text("rESET",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),))

        ]
      ),
    );
  }
}
class Count extends StatelessWidget {
  Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(' ${context.watch<Counter>().count}',
        key: Key('counterState'),
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ));
  }
}