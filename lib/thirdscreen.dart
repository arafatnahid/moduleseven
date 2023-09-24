import 'package:flutter/material.dart';
import 'package:moduleseven/secondscreen.dart';
import 'fourthscreen.dart';


class ThirdScreen extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screnn"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
              child: Text("back to previous",style: TextStyle(),),
              onPressed: (){

              },


            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
              child: Text("back to last",style: TextStyle(),),
              onPressed: (){
            Navigator.pop(context,"hello world");
              },


            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
              child: Text("op untill",style: TextStyle(),),
              onPressed: (){
                Navigator.of(context).popUntil((route) => route.isFirst);
              },


            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
              ),
              child: Text("pushand remove",style: TextStyle(),),
              onPressed: (){
               Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context)=>FourthScreen(),),
                       //(route) => false);
                   (route) => route.isFirst);
              },


            ),

          ],
        ),



      ),
    );
  }



}