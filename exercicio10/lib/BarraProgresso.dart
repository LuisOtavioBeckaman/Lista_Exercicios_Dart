import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Progresso',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProgressBarExample(),
    );
  }
}

class ProgressBarExample extends StatefulWidget {
  @override
  _ProgressBarExampleState createState() => _ProgressBarExampleState();
}

class _ProgressBarExampleState extends State<ProgressBarExample> {
  double _progressValue = 0.0;

  void _startTask() {
    // Simula uma tarefa com progresso
    const totalProgress = 100;
    const interval = 1;
    _progressValue = 0.0;
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _progressValue += interval / totalProgress;
        if (_progressValue >= 1.0) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Bar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LinearProgressIndicator(
              value: _progressValue,
              minHeight: 10,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _startTask,
              child: Text('Start Task'),
            ),
          ],
        ),
      ),
    );
  }
}
