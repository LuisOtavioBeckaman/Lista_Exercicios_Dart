import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Básico',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Básico'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Exemplo de Layout Básico',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 40.0,
                    ),
                    Text(
                      'Robson Mendes Suco de Limonations',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Image.network(
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffernandofranzini.wordpress.com%2F2017%2F07%2F11%2Fo-pato-sempre-morre%2F&psig=AOvVaw1kop_CgsmswIUrJ7gM3oTW&ust=1710868034730000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCICexqmm_oQDFQAAAAAdAAAAABAE',
                      width: 50.0,
                      height: 50.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
