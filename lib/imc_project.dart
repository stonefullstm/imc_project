import 'dart:io';
import 'dart:convert';

import 'package:imc_project/classes/pessoa.dart';

void execute() {
  print("Seja bemvindo à calculadora de IMC");
  print("----------------------------------");
  print("Digite o nome da pessoa:");
  String nome = stdin.readLineSync(encoding: utf8) ?? "";
  print("Digite o peso da pessoa (kg):");
  var value = stdin.readLineSync(encoding: utf8) ?? "";
  double peso = 0.0;
  double altura = 0.0;
  try {
    peso = double.parse(value);
  } catch (e) {
    print("Valor do peso inválido");
  }
  print("Digite a altura da pessoa (m):");
  value = stdin.readLineSync(encoding: utf8) ?? "";
  try {
    altura = double.parse(value);
  } catch (e) {
    print("Valor da altura inválido");
  }
  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa);  
}
