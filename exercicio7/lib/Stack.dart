import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack Exemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StackExample(),
    );
  }
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Examplo'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Painel01',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Painel02',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
