import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Random Container',
      home: ContainerScreen(),
    );
  }
}

class ContainerScreen extends StatefulWidget {
  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  Color _color = Colors.white;

  void _changeColor() {
    setState(() {
      _color = Color.fromARGB(255,
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colorful Container'),
      ),
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text(
              'Tap to change the color',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
