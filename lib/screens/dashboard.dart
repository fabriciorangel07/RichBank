import 'package:aula01/screens/Contatos/contato.dart';
import 'package:aula01/screens/transferencias/lista_transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Dashboard';

class MenuDashboard extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MenuDashboardState();
  }
}

class MenuDashboardState extends State<MenuDashboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(_tituloAppBar),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _FeatureItem(
                  'Transferência',
                  Icons.contact_mail_sharp,
                  onClick: () => _exibeListaContato(context),
                ),
                _FeatureItem(
                  'Feed Transações',
                  Icons.monetization_on,
                  onClick: () => _exibeListaTransferencia(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _exibeListaContato (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ListaContatos(),
    ));
  }

  void _exibeListaTransferencia (BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ListaTransferencia(),
    ));
  }
}

class _FeatureItem extends StatelessWidget {
  final String nome;
  final IconData icone;
  final Function onClick;

  _FeatureItem(this.nome, this.icone, {required this.onClick})
      : assert(icone != null),
        assert(onClick != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            onClick();
          },
          child: Container(
            height: 100,
            width: 150,
            padding: EdgeInsets.all(8.0),
            // color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icone,
                  color: Colors.white,
                  size: 30.0,
                ),
                Text(
                  nome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
