import 'dart:convert';
import 'dart:io';

class Consoleutility {
  static consoleescrita() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static lerconsole(String texto) {
    print(texto);
    return consoleescrita();
  }
}
