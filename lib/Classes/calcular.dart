class Calcularimc {
  static calcular(peso, altura) {
    return peso / (altura * 2);

  }

  static geradorimc(imc) {
    switch (imc) {
      case < 16:
        var classificacao = "Magreza grave";
        return classificacao;

      case < 17:
        var classificacao = "Magreza moderada";
        return classificacao;

      case < 18.5:
        var classificacao = "Magreza leve";
        return classificacao;

      case < 25:
        var classificacao = "Saudável";
        return classificacao;

      case < 30:
        var classificacao = "Sobrepeso";
        return classificacao;

      case < 35:
        var classificacao = "Obesidade grau I";
        return classificacao;

      case < 40:
        var classificacao = "Obesidade grau II(severa)";
        return classificacao;

      case > 40:
        var classificacao = "Obesidade grau III(Mórbida)";
        return classificacao;
    }
  }
}
