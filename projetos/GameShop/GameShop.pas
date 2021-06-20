unit GameShop;

{
  Refazendo exercicio da aula de POO
}

interface

Type
  gameShopStore = class(TObject) // poderia ser simplesmente class

  private
    GCodigo: Integer;
    GIdade: Integer;
    GqtdHoras: Double;
  public // definindo os métodos, somente os cabeçalhos
    constructor Create(Idade, Codigo: Integer); // construtor
    procedure Comprar(qtdHoras: Real);
    procedure Jogar(qtdHoras: Real);
    procedure Brinde();
    function getCodigo(): Integer;
    function getIdade(): Integer;
    function getQtdHoras: Double;
  end;

implementation // fazendo as implementações dos métodos

constructor gameShopStore.Create;
begin
  GCodigo := Codigo;
  GIdade := Idade;
end;

procedure gameShopStore.Comprar;
begin
  GqtdHoras := GqtdHoras + qtdHoras;
end;

procedure gameShopStore.Jogar;
begin
  GqtdHoras := GqtdHoras - qtdHoras;
end;

procedure gameShopStore.Brinde;
begin
  GqtdHoras := GqtdHoras * 2;
end;

function gameShopStore.getCodigo;
begin
  result := GCodigo;
end;

function gameShopStore.getIdade;
begin
  result := GIdade;
end;

function gameShopStore.getQtdHoras;
begin
  result := GqtdHoras;
end;

end.
