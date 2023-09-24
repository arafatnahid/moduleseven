import 'package:flutter/material.dart';
import 'thirdscreen.dart';


class SecondScreen extends StatelessWidget{
  final String name;
  final int age;

  const SecondScreen({super.key,required this.name,required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screnn"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                ),
                child: Text(name,style: TextStyle(),),
                onPressed: ()async{

                 final data=await Navigator.push(context,MaterialPageRoute(builder:(context)=>ThirdScreen(),));






              print(data);
      },
      ),
            Text(name),

          ],

        ),
    ),
    );

  }



}