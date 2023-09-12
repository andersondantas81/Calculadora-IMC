import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerStringNum();
  }

  static String lerStringNum() {
    return stdin.readLineSync(encoding: utf8) ?? "0";
  }
}
