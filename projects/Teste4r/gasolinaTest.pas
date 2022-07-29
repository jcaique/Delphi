program gasFuel;

{Teste de conhecimentos 4R}

{FUNÇÃO PARA CALCULAR O VALOR DO ALCOOL.}
function A(litros : double) : double;
const
priceA : double = 2.9; //preco do alcool
qtdDesc : double = 20; //quantidade base para desconto do alcool
disc1 : double = 0.03; //% de desconto para até 20 litros 
disc2 : double = 0.04;//% de desconto para acima de 20 litros
var
total : double; //variavel onde será armazenada o valor bruto do valor a ser pago
begin
total := litros * priceA;
if litros <= qtdDesc then
    A := total * (1-disc1)
else if litros > qtdDesc then
    A := total * (1-disc2);
end;

{FUNÇÃO PARA CALCULAR O VALOR DA GASOLINA}
function G(litros : double) : double;
const 
priceG : double = 3.3; //preco do gasolina
qtdDesc : double = 20;//quantidade base para desconto da gasolina
disc1 : double = 0.04;//% de desconto para até 20 litros 
disc2 : double = 0.05;//% de desconto para acima de 20 litros
var
total : double; //variavel onde será armazenada o valor bruto do valor a ser pago
begin
total := priceG * litros;
if litros <= qtdDesc then
G := total * (1-disc1)
else if litros > qtdDesc then
G := total * (1-disc2);
end;


{
	SERIA O EQUIVALENTE À UMA FUNCÃO MAIN DO C 
	ONDE É CHAMADA AS FUNCOES CRIADAS.
}
var 
litros, result : double;
tipo : string;
begin
{
	NA PROVA EU FIZ read(litros,tipo);
	A FORMA CORRETA É A QUE SEGUE ABAIXO.
}
readln(litros);
readln(tipo);

if (tipo = 'G') then
  result := G(litros)
else if (tipo = 'A') then
 result := A(litros);

//NA PROVA EU MOSTREI DIFERENTE TBM writeln(result) apenas.
writeln(result:4:2);
end.