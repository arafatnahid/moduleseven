import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstscreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch:Colors.cyan),
        darkTheme: ThemeData(primarySwatch:Colors.deepOrange),
        color: Colors.blue,
        debugShowCheckedModeBanner: false,
        home: FirstScreen());
  }
}
