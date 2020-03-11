import 'package:cauculator/components/display.dart';
import 'package:cauculator/components/keyboard.dart';
import 'package:cauculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cauculator extends StatefulWidget {
  @override
  _CauculatorState createState() => _CauculatorState();
}

class _CauculatorState extends State<Cauculator> {
  final Memory memory = Memory();
  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      home: Column(
        children:<Widget>[
          Display(memory.value),
          Keyboard(_onPressed)
        ]
      ),
    );
  }
}