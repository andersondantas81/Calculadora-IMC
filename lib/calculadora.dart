import 'dart:math';

String calcularIMC(double peso, double altura) {
  double result = 0;

  result = peso / pow(altura, 2);

  if (result < 16) {
    return "Magreza grave"; //
  }
  if (result < 17) {
    return "Magreza moderada";
  }
  if (result < 18.5) {
    return "Magreza leve";
  }
  if (result < 25) {
    return "Saudável";
  }
  if (result < 30) {
    return "Sobrepeso";
  }
  if (result < 35) {
    return "Obesidade Grau I";
  }
  if (result < 40) {
    return "Obesidade Grau II (servera)";
  }
  return "Obesidade Grau III (mórbida)";
}
