﻿program InstanciandoUmaClasse;

var
  Functionario: TFuncionario; // DECLARANDO UMA VARIÁVEL DO TIPO DA CLASSE
  nome: String = 'Fulano de Tal';
  idade: integer = 20;
  salario: double = 20000;

begin
  {
    Instanciando a classe a partir do método construtor Create.
    Com isto, temos um objeto da classe Funcionario criado.
  }
  Funcionario := TFuncionario.Create(nome, idade, salario);

end.
