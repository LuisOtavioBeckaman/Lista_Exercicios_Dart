import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listagem Dinâmica',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listagem Dinâmica'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              elevation: 5.0,
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
                title: Text(items[index]),
                subtitle: Text('Informações'),
                onTap: () {
                  // Ação ao clicar no card, se necessário
                  print('Clicou no item ${index + 1}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
