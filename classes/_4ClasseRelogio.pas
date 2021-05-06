unit Relogio;

{Simples exemplo utilizando properties em uma classe}

interface

type TRelogio = class(Tobject)

private
  FHoras : Integer;
  FMinutos : Integer;
  FSegundos : Integer;

public
  property Horas : Integer read FHoras write FHoras;
  property Minutos : Integer read FMinutos write FMinutos;
  property Segundos : Integer read FSegundos write FSegundos;

end;

implementation

end.
