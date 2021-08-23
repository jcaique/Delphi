unit UFRM1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  Tfrm1 = class(TForm)
    cds_Dados: TClientDataSet;
    cds_Dadoscd_Cod: TIntegerField;
    cds_Dadosds_Nome: TStringField;
    ds_Dados: TDataSource;
    grade_Dados: TDBGrid;
    lb1: TLabel;
    cds_Dadosfl_Repete: TStringField;
    lb2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm1: Tfrm1;

implementation

{$R *.dfm}

procedure Tfrm1.FormShow(Sender: TObject);
  var
    intCodDados, intCodRepetidos: array of Integer;
    i: Integer;
begin
  //Colocando dados fixos para teste
  cds_Dados.CreateDataSet();
  SetLength(intCodDados, 5);
  SetLength(intCodDados, 5);
  i := 0;

  cds_Dados.Append;
  cds_Dadoscd_Cod.AsInteger := 1;
  cds_Dadosds_Nome.AsString := 'Fulano1';
  cds_Dadosfl_Repete.AsString := 'N';
  cds_Dados.Post;

  cds_Dados.Append;
  cds_Dadoscd_Cod.AsInteger := 1;
  cds_Dadosds_Nome.AsString := 'Fulano1';
  cds_Dadosfl_Repete.AsString := 'N';
  cds_Dados.Post;

  cds_Dados.Append;
  cds_Dadoscd_Cod.AsInteger := 1;
  cds_Dadosds_Nome.AsString := 'Fulano1';
  cds_Dadosfl_Repete.AsString := 'N';
  cds_Dados.Post;

  cds_Dados.Append;
  cds_Dadoscd_Cod.AsInteger := 2;
  cds_Dadosds_Nome.AsString := 'Fulano2';
  cds_Dadosfl_Repete.AsString := 'N';
  cds_Dados.Post;

  cds_Dados.Append;
  cds_Dadoscd_Cod.AsInteger := 3;
  cds_Dadosds_Nome.AsString := 'Fulano3';
  cds_Dadosfl_Repete.AsString := 'N';
  cds_Dados.Post;

  cds_Dados.Append;
  cds_Dadoscd_Cod.AsInteger := 4;
  cds_Dadosds_Nome.AsString := 'Fulano4';
  cds_Dadosfl_Repete.AsString := 'N';
  cds_Dados.Post;

  cds_Dados.DisableControls;
  cds_Dados.First;
  while not cds_Dados.eof do
  begin
    intCodDados[i] := cds_Dadoscd_Cod.AsInteger;
    lb1.Caption := lb1.Caption + IntToStr(intCodDados[i]);
    Inc(i);
    cds_Dados.Next;
  end;
  cds_Dados.EnableControls;

  cds_Dados.DisableControls;
  cds_Dados.First;
  while not cds_Dados.eof do
  begin
    if intCodDados[i] = cds_Dadoscd_Cod.AsInteger then
    begin
      Inc(intCodRepetidos[i]);
    end;
    lb2.Caption := lb2.Caption + IntToStr(intCodRepetidos[i]);
    cds_Dados.Next;
  end;
  cds_Dados.EnableControls;

end;

end.
