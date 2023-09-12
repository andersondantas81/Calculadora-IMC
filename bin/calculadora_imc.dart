import 'dart:io';

import 'package:calculadora_imc/calculadora.dart' as app;
import 'package:calculadora_imc/exception/nome_invalido_exception.dart';
import 'package:calculadora_imc/models/pessoa.dart';
import 'package:calculadora_imc/utils/console_utils.dart';

void main() {
  print("Bem vindos a nossa calculadora de IMC");

  String? nome = ConsoleUtils.lerStringComTexto("Informe seu nome:");
  /* if (nome.length < 2) {
    throw NomeInvalidoException();
  } */

// Agora o programa não para
  try {
    if (nome.length < 2) {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    nome = "Nome não informado";
    print(NomeInvalidoException);
  } catch (e) {
    print(e);
    exit(0); // Para parar aplicação
  }

  print("Informe seu peso");
  double peso = double.parse(ConsoleUtils.lerStringNum());

  print("Informe seu altura");
  double altura = double.parse(ConsoleUtils.lerStringNum());

  var p = Pessoa(nome, peso, altura);

  String result = app.calcularIMC(p.getPeso(), p.getAltura());
  print(result);
}
