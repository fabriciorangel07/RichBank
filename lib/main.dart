import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencia(),
          appBar: AppBar(
            title: Text('Transferência'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('123456-7'),
          subtitle: Text('1000'),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('123456-7'),
          subtitle: Text('1000'),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('123456-7'),
          subtitle: Text('1000'),
        ),
      ),
    ]);
  }
}
