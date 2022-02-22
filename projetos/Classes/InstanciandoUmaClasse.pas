program InstanciandoUmaClasse;

uses classeFuncionario;

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

//O ideal é deixar as instancias dentro de um try finally, ou simplesmente
//liberar a classe instanciada da memória: Funcionario.Free; 
end.
