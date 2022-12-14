import 'package:aula01/components/editor.dart';
import 'package:flutter/material.dart';
import '../../models/transferencia.dart';

const _tituloAppBar = 'Criando TransferĂȘncia';

const _rotuloCampoNumeroConta = 'Numero da conta';
const _dicaCampoNumeroConta = '0000';

const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';

const _botaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        backgroundColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: _rotuloCampoNumeroConta,
              dica: _dicaCampoNumeroConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloCampoValor,
              dica: _dicaCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              child: Text(_botaoConfirmar),
              onPressed: () {
                _criaTransferencia(context);
              },
            )
          ],
        ),
      ),

      backgroundColor: Colors.purple,
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(
      _controladorCampoNumeroConta.text,
    );
    final double? valor = double.tryParse(
      _controladorCampoValor.text,
    );
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(
        valor,
        numeroConta,
      );
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
