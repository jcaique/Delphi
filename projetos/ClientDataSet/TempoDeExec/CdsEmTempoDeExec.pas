unit CdsEmTempoDeExec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Datasnap.DBClient;

type
  TfrmExec = class(TForm)
    dbGridTrain: TDBGrid;
    btTrain: TButton;
    procedure btTrainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExec: TfrmExec;

implementation

{$R *.dfm}

procedure TfrmExec.btTrainClick(Sender: TObject);
  var
    cds_TempoExec: TClientDataSet;
    ds_TempoExec: TDataSource;
begin
  cds_TempoExec := TClientDataSet.Create(nil);
  ds_TempoExec := TDataSource.Create(nil);

  try
    ds_TempoExec.DataSet := cds_TempoExec;

    dbGridTrain.Columns[0].FieldName := 'CodPessoa';
    dbGridTrain.Columns[1].FieldName := 'NomePessoa';
    dbGridTrain.Columns[0].Title.Caption := 'Código';
    dbGridTrain.Columns[1].Title.Caption := 'Nome';

    cds_TempoExec.FieldDefs.Add('CodPessoa',ftInteger);
    cds_TempoExec.FieldDefs.Add('NomePessoa', ftString, 100);
    cds_TempoExec.CreateDataSet;

    cds_TempoExec.Append;
    cds_TempoExec.FieldByName('CodPessoa').Value := 1;
    cds_TempoExec.FieldByName('NomePessoa').Value := 'João';
    cds_TempoExec.Post;

    cds_TempoExec.Append;
    cds_TempoExec.FieldByName('CodPessoa').Value := 2;
    cds_TempoExec.FieldByName('NomePessoa').Value := 'Maria';
    cds_TempoExec.Post;

    cds_TempoExec.Append;
    cds_TempoExec.FieldByName('CodPessoa').Value := 3;
    cds_TempoExec.FieldByName('NomePessoa').Value := 'Yusaf';
    cds_TempoExec.Post;
  finally
    cds_TempoExec.Free;
    ds_TempoExec.Free;
  end;
end;

end.
