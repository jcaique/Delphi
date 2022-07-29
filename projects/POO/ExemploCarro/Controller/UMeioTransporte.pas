unit UMeioTransporte;

interface

uses
  Vcl.Dialogs;

type
  TMeioTransporte = class
  private
    FDescricao: string;
    FCapacidade: Integer;

  protected    //Abstract � sempre utilizado com o virtual, e indica que o m�todo n�o possui implementa��o na classe onde foi declarado.
    procedure Ligar; virtual; abstract;

  public
    procedure Mover; virtual;
    constructor Create;
    destructor Destroy; override;

  published
    property Capacidade: Integer read FCapacidade write FCapacidade;
    property Descricao: string read FDescricao write FDescricao;
  end;

implementation

{ TMeioTransporte }

constructor TMeioTransporte.Create;
begin
  Self.FCapacidade := 0;
  Self.FDescricao := '---';
end;

destructor TMeioTransporte.Destroy;
begin
  //colocar o que foi alocado enquanto a classe estava sendo utilizada, o destroy sempre � chamado quando damos o .Free na instancia da classe
  inherited;
end;

procedure TMeioTransporte.Mover;
begin
  {
    Todo meio de transporte precisa ser ligado, n�o implementamos o m�todo Ligar nesta classe
    por�m, podemos fazer sua chamada, o que ser� repetido para as outras classe ao utilizar o inherited.
  }
  Ligar;
end;

end.

