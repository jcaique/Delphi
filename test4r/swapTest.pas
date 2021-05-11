program swap;

var
a,b : double;
begin
a:=3;
b:=5;

writeln('antes:');
writeln('a=',a:1:0,' b=',b:1:0);

a:=(a*b)/a;
b:=(b*3)/b; //b := (b+b+b)/b; 

writeln('depois:');
writeln('a=',a:1:0,' b=',b:1:0);
end.

{
	Teste de conhecimentos 4R. 
}
