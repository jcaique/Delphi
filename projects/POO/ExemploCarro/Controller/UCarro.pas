unit UCarro;

interface

uses
  Vcl.Dialogs, UMeioTransporte;

type
  TCarro = class(TMeioTransporte)
//    Descricao: string;   //Campos comuns a classe mãe comentados
//    Capacidade: Integer;
  private
    FQuilometragem: integer;
    function GetQuilometragem: Integer;
    procedure SetQuilometragem(const Value: integer);

  protected
    procedure Ligar; override;

  public
    procedure Mover; override;
    constructor Create();

  published
    property Quilometragem: Integer read GetQuilometragem write SetQuilometragem;
  end;

implementation

{ TCarro }

constructor TCarro.Create;
begin
  Self.Quilometragem := 0;
end;

function TCarro.GetQuilometragem: Integer;
begin
  Result := FQuilometragem;
end;

procedure TCarro.Ligar;
begin
  ShowMessage('Ligando o carro ' + Self.Descricao);
end;

procedure TCarro.Mover;
begin
  inherited; //herda o que está no método da classe mãe

  ShowMessage(Self.Descricao + ' entrou em movimento.');
end;

procedure TCarro.SetQuilometragem(const Value: integer);
begin
  if Value < 0 then
    FQuilometragem := 0
  else
    FQuilometragem := Value;
end;

end.

