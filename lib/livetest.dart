import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _checkAndShowAlert();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _checkAndShowAlert();
    });
  }

  void _checkAndShowAlert() {
    if (_counter == 5) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Button Pressed 5 Times'),
          content: Text('The button has been pressed 5 times.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('close'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Count: $_counter',
                style: TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: Text('+'),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    child: Text('-'),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}