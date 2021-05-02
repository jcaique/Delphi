program EstruturaDeUmPrograma;

{$APPTYPE CONSOLE}
{$R *.res}

{
  A palavra 'uses' é como se fosse um '#INCLUDE' em C,
  serve para inserirmos determinadas classes com códigos
  prontos.
}
uses
  System.SysUtils;

{
  Como se fosse o 'int main()'
  é aqui que será rodado o bloco
  principal do programa, entre 'begin - end.'
  com o ponto final.

  Todo bloco de código(main, function, procedure)
  precisa de um espaço para declaração de variáveis,
  aqui declaramos tudo logo após a palavra 'var'.

  para declarar uma variável:
  var
  nome_var : tipo;

  da mesma forma para constantes:
  const
  nome_const : tipo = valor_const;
}

var
  frase: String = 'Olá Mundo!';
  umNumeroInteiro: INTEGER;
  umFloat: double;

begin
  try
    writeln(frase); //escrevendo no console
    readln;
  except
    on A: Exception do
      writeln(A.ClassName, ': ', A.Message);
  end;

end.