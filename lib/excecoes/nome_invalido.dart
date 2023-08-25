class NomevazioException implements Exception {
  String error() => "nome Invalido";
  @override
  String toString() {
    return "Nome Invalido:  ${error()}";


  
  }
}
