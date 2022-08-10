import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: const <Widget>[
          Text(
            'Primeiros passos em flutter',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Inicio de semestre',
            textDirection: TextDirection.ltr,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
