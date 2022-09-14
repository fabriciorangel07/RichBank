import 'package:flutter/material.dart';
import '../models/transferencia.dart';
import 'transferencias/formulario_transferencia.dart';

const _tituloAppBar = 'Dashboard';

class MenuDashboard extends StatefulWidget {
  final List<Dashboard> _dashboard = [];

  @override
  State<StatefulWidget> createState() {
    return MenuDashboardState();
  }
}

class Dashboard {
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
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[100],
                  child: const Text('Transferências'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[400],
                  child: const Text('Contatos'),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
