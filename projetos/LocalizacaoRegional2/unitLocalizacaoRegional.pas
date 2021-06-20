unit unitLocalizacaoRegional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TfrmPrincipal = class(TForm)
    pageControl: TPageControl;
    tabPais: TTabSheet;
    tabEstado: TTabSheet;
    tabMunicipio: TTabSheet;
    sqlConexao: TADOConnection;
    sqlQueryPais: TADOQuery;
    sqlQueryPaiscd_Pais: TAutoIncField;
    sqlQueryPaisds_Pais: TStringField;
    dsPais: TDataSource;
    dsEstado: TDataSource;
    sqlQueryEstado: TADOQuery;
    sqlQueryEstadocd_Estado: TAutoIncField;
    sqlQueryEstadocd_Pais: TIntegerField;
    sqlQueryEstadods_Estado: TStringField;
    sqlQueryEstadods_Sigla: TStringField;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  i: integer;
  rndCo,rndCo2: array of String;
  rndStr: String;
begin
  rndCo := ['Arlindo', 'João', 'Maria', 'José', 'Clevenildo'];
  rndCo2 := ['Silva','Santos','Barbosa','Ferreira','Oliveira','Souza','Moura'];
  sqlQueryPais.Close;
  sqlQueryPais.SQL.Clear;
  sqlQueryPais.SQL.Add('select * from Pais where cd_Pais is null');
  sqlQueryPais.Open;

  try
    for i := 0 to 1000000 do
    begin
       sqlQueryPais.Append;
       rndStr := (rndCo[random(5)] + ' ' + rndCo2[random(6)] + ' ' + intToStr(i));
      sqlQueryPaisds_Pais.AsString := rndStr;
      if i = 1000000 then
        ShowMessage('Finalizado!');
      sqlQueryPais.Post;
    end;
  except
    on E: Exception do
      Application.MessageBox(PWideChar('Deu ruim' + E.Message),
        'Programe novamente!', MB_ICONMASK + MB_ICONHAND);
  end;
end;
end.
