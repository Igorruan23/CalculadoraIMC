import 'dart:io';

import 'package:calculadora_imc/Classes/calcular.dart';
import 'package:calculadora_imc/Classes/console.dart';
import 'package:calculadora_imc/excecoes/nome_invalido.dart';
import 'package:calculadora_imc/excecoes/numero_exception.dart';

void main(List<String> arguments) {
  print("Bem vindo a calculadora IMC");

  var nome = Consoleutility.lerconsole("Qual seu nome?");
  try {
    if (nome.trim() == "") {
      throw NomevazioException();
    }
  } on NomevazioException {
    nome = "Nome Padrão";
    print(NomevazioException);
    //caso não coloque o nome saira do programa
  } catch (e) {
    print(e);
  }
  nome.toString().trimLeft();

  var peso = Consoleutility.lerconsole("Qual seu peso?");
  peso = double.parse(peso);
  try {
    while (peso == 0) {
      print(Numerovazio());
      peso = Consoleutility.lerconsole(
          "Vamos tentar mais uma vez... Qual seu peso?");
      peso = double.parse(peso);
    }
  } on Numerovazio {
    print(Numerovazio);
  } catch (e) {
    print(e);
    exit(0);
  }

  var altura = Consoleutility.lerconsole("Qual sua altura?");
  altura = double.parse(altura);
  try {
    while (altura == 0) {
      print(Numerovazio());
      altura = Consoleutility.lerconsole(
          "Vamos tentar mais uma vez... Qual sua altura?");
      altura = double.parse(peso);
    }
  } on Numerovazio {
    print(Numerovazio);
  } catch (e) {
    print(e);
    exit(0);
  }

  var calcula = Calcularimc.calcular(peso, altura);
  print(calcula);

  var imc = Calcularimc.geradorimc(calcula);

  print(
      "O IMC de: $nome cujo o peso e: $peso e a altura e $altura tem um imc de : $calcula consta em: $imc");
}
