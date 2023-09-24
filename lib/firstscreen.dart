import 'package:flutter/material.dart';
import 'secondscreen.dart';


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screnn"),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          child: Text("next screen",style: TextStyle(),),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>SecondScreen(
              name:'next to screen ',
              age:20,
            )));

      },
        ),
      ),
    );
  }



}