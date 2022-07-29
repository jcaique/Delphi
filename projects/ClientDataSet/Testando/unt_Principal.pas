unit unt_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmClientDataSet = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    cds: TClientDataSet;
    dsCds: TDataSource;
    connection: TADOConnection;
    qryPaises: TADOQuery;
    qryPaisescd_Pais: TAutoIncField;
    qryPaisesds_Pais: TStringField;
    dsBanco: TDataSource;
    cdscd_Pais: TIntegerField;
    cdsds_Pais: TStringField;
    Button1: TButton;
    Button2: TButton;
    cdsteste: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientDataSet: TfrmClientDataSet;

implementation

{$R *.dfm}

procedure TfrmClientDataSet.Button1Click(Sender: TObject);
begin
  qryPaises.Open();
  cds.Open();

  qryPaises.First;

  while not(qryPaises.Eof) do
  begin
    cds.Append;

    cdsds_Pais.Value := qryPaisesds_Pais.Value;
    cdscd_Pais.Value := qryPaisescd_Pais.Value;

    qryPaises.Next;
  end;
end;

procedure TfrmClientDataSet.Button2Click(Sender: TObject);
begin
  cds.LogChanges := False;
  cds.SaveToFile('D:\Teste\teste.xml', dfXML);
end;

procedure TfrmClientDataSet.FormShow(Sender: TObject);
begin
  cds.LoadFromFile('D:\Teste\teste.xml');

  cds.Active := True;
end;

end.

//TESTANDO O COMPONENTE TClientDataSet, utilizado para trabalhar com dados em memória
//É um DataSet normal, porém não trabalha com dados direto do banco.
//É preciso criar seus campos, criar o dataset para fazer uso. 
//Mesma forma de utilizar o ADOQuery, nomeds_Pais por exemplo, pois o ADOQuery é uma herança do DataSet (posso estar errado)
