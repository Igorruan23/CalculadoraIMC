class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getnome() {
    return _nome;
  }

  void setnome(String nome) {
    _nome = nome;
  }

  double getpeso() {
    return _peso;
  }

  void setpeso(double peso) {
    _peso = peso;
  }

  double getaltura() {
    return _altura;
  }

  void setaltura(double altura) {
    _altura = altura;
  }
}
