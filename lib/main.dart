import 'package:apiimplementation/providers/counter_screen.dart';
import 'package:apiimplementation/providers/first_Screen.dart';
import 'package:apiimplementation/textfied_validation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'get_api_by_dio/api_calling/auth_calling.dart';
import 'get_api_by_http/get.dart';

void main() {
  runApp(MultiProvider(
    providers: [

      ChangeNotifierProvider(create: (_)=>Counter()),
    ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: DioApiCalling(),
      // home: DataFromHttpApi(),
      // home: FirstScreen(),
      home: ValidatiionField(),
    );
  }
}

