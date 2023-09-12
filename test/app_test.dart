// ignore: unused_import
import 'package:calculadora_imc/calculadora.dart' as app;
import 'package:test/test.dart';

void main() {
  test('calculate com resultado Magreza grave', () {
    expect(app.calcularIMC(46.2, 1.7), 'Magreza grave');
  });
  test('calculate com resultado Magreza moderada', () {
    expect(app.calcularIMC(46.3, 1.7), 'Magreza moderada');
  });
  test('calculate com resultado Magreza leve', () {
    expect(app.calcularIMC(53.4, 1.7), 'Magreza leve');
  });
  test('calculate com resultado Saudável', () {
    expect(app.calcularIMC(70, 1.7), 'Saudável');
  });
  test('calculate com resultado Sobrepeso', () {
    expect(app.calcularIMC(72.3, 1.7), 'Sobrepeso');
  });
  test('calculate com resultado Obesidade Grau I', () {
    expect(app.calcularIMC(101.1, 1.7), 'Obesidade Grau I');
  });
  test('calculate com resultado Obesidade Grau II (servera)', () {
    expect(app.calcularIMC(115.5, 1.7), 'Obesidade Grau II (servera)');
  });
  test('calculate com resultado Obesidade Grau III (mórbida)', () {
    expect(app.calcularIMC(115.6, 1.7), 'Obesidade Grau III (mórbida)');
  });
}
