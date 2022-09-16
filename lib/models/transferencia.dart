
class Transferencia {
  final double valor;
  final int numeroConta;


  Transferencia(
    this.valor,
    this.numeroConta,
  );

  @override
  String toDouble() {
    return 'Transferencia {valor: $valor, numeroConta: $numeroConta}';
  }
}
