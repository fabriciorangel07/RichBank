import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: const <Widget>[
          Text('Primeiros passos em flutter'),
          Text('Inicio de semestre'),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
