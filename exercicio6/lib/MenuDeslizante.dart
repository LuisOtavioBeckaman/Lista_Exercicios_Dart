import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/Painel1': (context) => Painel1(),
        '/Painel2': (context) => Painel2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Deslizante Examplo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Painel 1'),
              onTap: () {
                Navigator.pop(context); // feche o drawer
                Navigator.pushNamed(context, '/Painel1');
              },
            ),
            ListTile(
              title: Text('Painel 2'),
              onTap: () {
                Navigator.pop(context); // feche o drawer
                Navigator.pushNamed(context, '/Painel2');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Painel'),
      ),
    );
  }
}

class Painel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel 1'),
      ),
      body: Center(
        child: Text('Este é o Painel 1'),
      ),
    );
  }
}

class Painel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Painel 2'),
      ),
      body: Center(
        child: Text('Este é o Painel 2'),
      ),
    );
  }
}
