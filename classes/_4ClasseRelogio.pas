unit Relogio;

interface

type TRelogio = class(Tobject)

private
  FHoras : Integer;
  FMinutos : Integer;
  FSegundos : Integer;

public
  property PHoras : Integer read RHoras write RHoras;
  property PMinutos : Integer read RMinutos write RMinutos;
  property PSegundos : Integer read RSegundos write RSegundos;

end;

implementation

end.
