// import 'package:imc_project/imc_project.dart' as app;
import 'package:imc_project/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Cria objeto Pessoa e retorna nome', () {
    expect(Pessoa("Joao da Silva", 72.0, 1.8).getNome(), "Joao da Silva");
  });
}
