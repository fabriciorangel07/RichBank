import 'package:aula01/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      Banco(),
    );

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: MenuDashboard(),
      ),
    );
  }
}
