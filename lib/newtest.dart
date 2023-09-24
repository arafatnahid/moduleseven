import 'package:flutter/material.dart';

void main() {
  runApp(ButtonPressedFiveTimes());
}

class ButtonPressedFiveTimes extends StatefulWidget {
  const ButtonPressedFiveTimes({Key? key}) : super(key: key);

  @override
  State<ButtonPressedFiveTimes> createState() => _ButtonPressedFiveTimesState();
}

class _ButtonPressedFiveTimesState extends State<ButtonPressedFiveTimes> {
  int _buttonPressCount = 0;

  void _onButtonPressed() {
    setState(() {
      _buttonPressCount++;
    });

    if (_buttonPressCount == 5) {
      // Display the "Button pressed 5 times" message.
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Button Pressed 5 Times'),
          content: Text('The button has been pressed 5 times.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
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
          title: Text('Button Pressed 5 Times'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _onButtonPressed,
                child: Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}