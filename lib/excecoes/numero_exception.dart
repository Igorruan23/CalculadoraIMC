class Numerovazio implements Exception {
  double error() => 0;

  @override
  String toString() {
    return "Numero invalido ou igual a 0";
  }
}
