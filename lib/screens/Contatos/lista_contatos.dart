import 'package:aula01/components/editor_contato.dart';
import 'package:flutter/material.dart';
import '../../models/form_contato.dart';

const _tituloAppBar = 'Cadastro de Clientes';

const _rotuloCampoNome = 'Nome';
const _dicaCampoNome = 'Seu nome aqui';

const _rotuloCampoEndereco = 'Endereço';
const _dicaCampoEndereco = 'Rua/Avenida';

const _rotuloCampoTelefone = 'Telefone';
const _dicaCampoTelefone = '(xx) xxxxx-xxxx)';

const _rotuloCampoEmail = 'Email';
const _dicaCampoEmail = 'seuemail@mail.com';

const _rotuloCampoCPF = 'CPF';
const _dicaCampoCPF = '123456789';

const _botaoConfirmar = 'Confirmar';

class FormularioContatos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioContatosState();
  }
}

class FormularioContatosState extends State<FormularioContatos> {
  final TextEditingController _controladorCampoNome = TextEditingController();
  final TextEditingController _controladorCampoEndereco = TextEditingController();
  final TextEditingController _controladorCampoTelefone = TextEditingController();
  final TextEditingController _controladorCampoEmail = TextEditingController();
  final TextEditingController _controladorCampoCPF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
        backgroundColor: Colors.black45,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Editor_Contato(
              controlador: _controladorCampoNome,
              rotulo: _rotuloCampoNome,
              dica: _dicaCampoNome,
            ),
            Editor_Contato(
              controlador: _controladorCampoEndereco,
              rotulo: _rotuloCampoEndereco,
              dica: _dicaCampoEndereco,
            ),
            Editor_Contato(
              controlador: _controladorCampoTelefone,
              rotulo: _rotuloCampoTelefone,
              dica: _dicaCampoTelefone,
            ),
            Editor_Contato(
              controlador: _controladorCampoEmail,
              rotulo: _rotuloCampoEmail,
              dica: _dicaCampoEmail,
            ),
            Editor_Contato(
              controlador: _controladorCampoCPF,
              rotulo: _rotuloCampoCPF,
              dica: _dicaCampoCPF,
            ),
            ElevatedButton(
              child: Text(_botaoConfirmar),
              onPressed: () {
                _criaCadastro(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void _criaCadastro (BuildContext context) {
    final String? nome = (
      _controladorCampoNome.text
    );
    final String? endereco = (
      _controladorCampoEndereco.text
    );
    final String? telefone = (
      _controladorCampoTelefone.text
    );
    final String? email = (
      _controladorCampoEmail.text
    );
    final String? CPF = (
      _controladorCampoCPF.text
    );
    if (nome != null && endereco != null && telefone != null && email != null && CPF != null) {
      final usuarioCriado = Contatos(
        nome,
        endereco,
        telefone,
        email,
        CPF,
      );
      Navigator.pop(context, usuarioCriado);
    }
  }
}
