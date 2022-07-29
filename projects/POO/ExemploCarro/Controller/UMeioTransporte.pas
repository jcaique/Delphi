unit UMeioTransporte;

interface

uses
  Vcl.Dialogs;

type
  TMeioTransporte = class
  private
    FDescricao: string;
    FCapacidade: Integer;

  protected    //Abstract é sempre utilizado com o virtual, e indica que o método não possui implementação na classe onde foi declarado.
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
  //colocar o que foi alocado enquanto a classe estava sendo utilizada, o destroy sempre é chamado quando damos o .Free na instancia da classe
  inherited;
end;

procedure TMeioTransporte.Mover;
begin
  {
    Todo meio de transporte precisa ser ligado, não implementamos o método Ligar nesta classe
    porém, podemos fazer sua chamada, o que será repetido para as outras classe ao utilizar o inherited.
  }
  Ligar;
end;

end.

