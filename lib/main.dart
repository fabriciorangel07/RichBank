import 'package:aula01/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(
      Banco(),
    );

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_BR';
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: MenuDashboard(),
      ),
    );
  }
}
