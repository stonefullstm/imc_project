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
  double peso = double.parse(value);
  print("Digite a altura da pessoa (m):");
  value = stdin.readLineSync(encoding: utf8) ?? "";
  double altura = double.parse(value);
  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa);  
}
