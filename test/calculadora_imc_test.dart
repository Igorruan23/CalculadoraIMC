import 'package:calculadora_imc/Classes/calcular.dart';
import 'package:test/test.dart';

void main() {
  test('calcula IMC com peso e altura', () {
    expect(Calcularimc.calcular(100,2.00),equals(25));
  });
   test('calcula IMC sem peso e com altura', () {
    expect(Calcularimc.calcular(0,2.00),equals(0));
  });
   test('calcula IMC com peso e sem altura', () {
    expect(Calcularimc.calcular(100,0),equals (double.infinity));
  });
}
