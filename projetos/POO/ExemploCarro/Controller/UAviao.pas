unit UAviao;

interface

uses
  Vcl.Dialogs, UMeioTransporte;

type
  TAviao = class(TMeioTransporte)
//    Descricao: string;  campos comuns a classe mãe comentados
//    Capacidade: integer;
  private
    FHorasVoo: Integer;
    function GetHorasVoo: Integer;
    procedure SetHorasVoo(const Value: integer);
  protected
    procedure Ligar; override;
  public
    procedure Mover; override;
    constructor Create;
  published
    property HorasVoo: integer read GetHorasVoo write SetHorasVoo;
  end;

implementation

{ TAviao }

constructor TAviao.Create;
begin
  inherited;

  Self.HorasVoo := 0;
end;

function TAviao.GetHorasVoo: Integer;
begin
  Result := FHorasVoo;
end;

procedure TAviao.Ligar;
begin
  ShowMessage('Ligando o avião ' + Self.Descricao);
end;

procedure TAviao.Mover;
begin
  inherited; //herda o que está no método da classe mãe

  ShowMessage(Self.Descricao + ' está voando.');
end;

procedure TAviao.SetHorasVoo(const Value: integer);
begin
  if Value > 0 then
    HorasVoo := Value
  else
    HorasVoo := 0;
end;

end.

