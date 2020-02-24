import 'dart:io';
import './helpers/variaveis.dart' as variaveis;

main() {
  String seuNome;
  int suaIdade;
  bool seuGenero;
  double valorA;
  num valorB; // num constitui tanto double, quanto int.

  print('----------------------------------------------------------------------');
  print('Olá! Qual é o seu primeiro nome?');
  seuNome = stdin.readLineSync();

  print('Qual sua idade $seuNome ?');
  suaIdade = int.parse(stdin.readLineSync());

  print('Seu gênero? Digite (0) - Homem, (1) - Mulher:');
  seuGenero = stdin.readLineSync().toString() == '0';

  print('Informe um valor qualquer para o cálculo da multiplicação:');
  valorA = double.parse( stdin.readLineSync() );

  print('Informe outro valor para o cálculo da multiplicação:');
  valorB = double.parse( stdin.readLineSync() );

  print('SEUS DADOS:');
  print('${seuNome.toUpperCase()} - ${suaIdade} anos, ${variaveis.obterGenero(seuGenero)}');
  print('');
  print('RESULTADO DA MULTIPLICAÇÃO:');
  print('O resultado da multiplicação ${valorA} X ${valorB} é ${variaveis.multiplicacao(valorA, valorB)}');
  print('----------------------------------------------------------------------');
}