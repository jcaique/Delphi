unit classeRetangulo;

{ Refazendo exercícios }

interface

type
  TRetangulo = class(Tobject)
  private
    FAltura: double;
    FBase: double;

  public
    // entendendo as properties: property nome : tipo read atributo1 write atributo1
    property PAltura: double read FAltura write FAltura;
    property PBase: double read FBase write FBase;

    // utilizando métodos
    function getAltura(): double;
    function getBase(): double;
    function calcArea(): double;
    function calcPerimetro(): double;
    procedure setAltura(altura: double);
    procedure setBase(base: double);
  end;

implementation

procedure TRetangulo.setAltura(altura: double);
begin
  FAltura := altura;
end;

procedure TRetangulo.setBase(base: double);
begin
  FBase := base;
end;

function TRetangulo.getAltura(): double;
begin
  Result := FAltura;
end;

function TRetangulo.getBase(): double;
begin
  Result := FBase;
end;

function TRetangulo.calcArea(): double;
begin
  Result := (FBase * FAltura);
end;

function TRetangulo.calcPerimetro(): double;
begin
  Result := ((FBase + FAltura) * 2);
end;

end.
