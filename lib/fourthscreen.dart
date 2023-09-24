import 'package:flutter/material.dart';
import 'firstscreen.dart';


class FourthScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fourth Screnn"),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          child: Text("next screen",style: TextStyle(),),
          onPressed: (){



          },
        ),
      ),
    );
  }



}