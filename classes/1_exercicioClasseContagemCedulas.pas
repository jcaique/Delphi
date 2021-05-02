unit oopClasseContagemCedulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TContagemCedulas = class(tobject) // TContagemCedulas = class(TObject)

  protected
    FValorContagem: integer;
    FQtdNotas200: integer;
    FQtdNotas100: integer;
    FQtdNotas50: integer;
    FQtdNotas20: integer;
    FQtdNotas10: integer;
    FQtdNotas5: integer;
    FQtdNOtas2: integer;

    {
      TODA 'PROCEDURE' É COMO UMA FUNÇÃO VOID - NÃO RETORNA VALORES
      PARA RETORNAR VALORES, UTILIZAMOS UMA 'FUNCTION', ONDE PARA
      RETORNAR DENTRO DO CÓDIGO, UTILIZAMOS A PALAVRA 'RESULT'.

      PARA DECLARAR UMA FUNCTION: function nome : tipo_retorno;
      PARA DECLARAR UMA PROCEDURE: procedure nome;
    }
    procedure Distribuicao;
    procedure DefineValorContagem(valor: integer);

  public
    function ObterDistribuicao: TStringList;
    property ValorContagem: integer read FValorContagem
      write DefineValorContagem;

  end;

implementation

uses System.Math;

procedure TContagemCedulas.Distribuicao;

var
  Auxiliar: integer;

begin
  Auxiliar := FValorContagem;

  FQtdNotas200 := Auxiliar div 200;
  // em FQtdNotas200 guarde o numero do quociente por 200
  Auxiliar := Auxiliar mod 200;
  // guardando o resto da divisao por 200 em Auxiliar

  if Auxiliar > 0 then
  begin
    FQtdNotas100 := Auxiliar div 100;
    Auxiliar := Auxiliar mod 100;

    if Auxiliar > 0 then
    begin
      FQtdNotas50 := Auxiliar div 50;
      Auxiliar := Auxiliar mod 50;

      if Auxiliar > 0 then
      begin
        FQtdNotas20 := Auxiliar div 20;
        Auxiliar := Auxiliar mod 20;

        if Auxiliar > 0 then
        begin
          FQtdNotas10 := Auxiliar div 10;
          Auxiliar := Auxiliar mod 10;

          if Auxiliar > 0 then
          begin
            FQtdNotas5 := Auxilair div 5;
            Auxiliar := Auxiliar mod 5;

            if Auxiliar > 0 then
            begin
              FQtdNotas5 := Auxilair div 2;
              Auxiliar := Auxiliar mod 2;
            end;
          end;
        end;
      end;
    end;
  end;

  procedure TContagemCedulas.DefineValorContagem(valor: integer);
  begin
    if valor < 0 then
      FValorContagem := 0
    else
    begin
      FValorContagem := valor;
      Distribuicoa();
    end;
  end;

  function TContagemCedulas.ObterDistribuicao: TStringList;
  var
    Lista: TStringList;
  begin
    List := TStringList.Create; // criando uma lista

    Lista.Add(IntToStr(FQtdNotas200) + ' nota(s) de 200');
    Lista.Add(IntToStr(FQtdNotas100) + ' nota(s) de 100');
    Lista.Add(IntToStr(FQtdNotas50) + ' nota(s) de 50');
    Lista.Add(IntToStr(FQtdNotas20) + ' nota(s) de 20');
    Lista.Add(IntToStr(FQtdNotas10) + ' nota(s) de 10');
    Lista.Add(IntToStr(FQtdNotas5) + ' nota(s) de 5');
    Lista.Add(IntToStr(FQtdNOtas2) + ' nota(s) de 2');

    result := Lista;
  end;

end.
