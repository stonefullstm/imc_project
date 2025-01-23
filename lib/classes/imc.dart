import 'package:imc_project/classes/pessoa.dart';

class Imc {
  static double calculateImc(Pessoa pessoa) {
    return double.parse((pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura())).toStringAsFixed(2));   
  }

  static String resultImc(Pessoa pessoa) {
    var imc = calculateImc(pessoa);
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc < 17) {
      return "Magreza moderada"; 
    } else if (imc < 18.5) {
      return "Magreza leve";
    } else if (imc < 25) {
      return "Saudável";
    } else if (imc < 30) {
      return "Sobrepeso";
    } else if (imc < 35) {
      return "Obesidade grau I";
    } else if (imc < 40) {
      return "Obesidade grau II (severa)";
    } else {
      return "Obesidade grau III (mórbida)";
    }
  }
}