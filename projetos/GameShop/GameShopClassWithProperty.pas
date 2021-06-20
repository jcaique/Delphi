unit GameShopClassWithProperty;
 //ESTUDAR E LER MAIS A RESPEITO DE PROPERTIES
interface

Type
  TGameShopWithProperty = class(TObject)
  private
    GCodigo: Integer;
    GQtdHoras: Double;
    GIdade: Integer;
  public
    constructor Create(Codigo, Idade: Integer);
    function getCodigo: Integer;
    function getIdade: Integer;
    function getQtdHoras: Double;
  end;

implementation

{ TGameShopWithProperty }

constructor TGameShopWithProperty.Create(Codigo, Idade: Integer);
begin
  GCodigo := Codigo;
  GIdade := Idade;
end;

end.
