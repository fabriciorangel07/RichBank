import 'package:aula01/models/form_contato.dart';
import 'package:aula01/screens/Contatos/lista_contatos.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Contatos';

class ListaContatos extends StatefulWidget {
  final List<Contatos> _contatos = [];

  @override
  State<StatefulWidget> createState() {
    return ListaContatosState();
  }
}

class ListaContatosState extends State<ListaContatos> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        backgroundColor: Colors.redAccent[200],
      ),
      backgroundColor: Color.fromARGB(255, 107, 103, 103),
      body: ListView.builder(
        itemCount: widget._contatos.length,
        itemBuilder: ((context, indice) {
          final contato = widget._contatos[indice];
          return ItemContato(contato);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 64, 43, 65),
        onPressed: () {
          final Future<Contatos?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioContatos();
              },
            ),
          );
          future.then(
            (contatoCriado) {
              if (contatoCriado != null) {
                setState(
                  () {
                    widget._contatos.add(
                      contatoCriado,
                    );
                  },
                );
              }
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemContato extends StatelessWidget {
  final Contatos _contato;

  ItemContato(this._contato);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    backgroundColor: var blue = Colors.blue;
    return Container(
      child: ListTile(
        leading: Icon(Icons.contact_mail_rounded),
        title: Text('Nome: ' + _contato.nome.toString(),
          style: TextStyle(fontSize: 24.0),
        ),
        subtitle: Container(
          child: (Column (
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Endereço: ' + _contato.endereco.toString(), style: TextStyle(fontSize: 16, color: Colors.white)),
              Text('Telefone: ' + _contato.telefone.toString(), style: TextStyle(fontSize: 16, color: Colors.blue)),
              Text('Email: ' + _contato.email.toString(), style: TextStyle(fontSize: 16, color: Colors.red)),
              Text('CPF: ' + _contato.cpf.toString(), style: TextStyle(fontSize: 16, color: Colors.green)
              ),
            ],
          )),
        ),
      ),
    );
  }

}
