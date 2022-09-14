class Contatos {
  final int nome;
  final int endereco;
  final int telefone;
  final int email;
  final int cpf;


  Contatos(
      this.nome,
      this.endereco,
      this.telefone,
      this.email,
      this.cpf,
      );

  @override
  String toString() {
    return 'Nome{valor: $nome, endereco: $endereco, Telefone: $telefone,'
        'E-mail: $email, CPF: $cpf}';
  }
}
