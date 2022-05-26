unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Edit, FMX.Objects,
  RESTRequest4D, FireDAC.Comp.Client;

type
  TfrmMain = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    edCep: TEdit;
    meDadosEncontrados: TMemo;
    procedure edCepChangeTracking(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.edCepChangeTracking(Sender: TObject);
begin
  if string(edCep.Text).Length < 8 then
    Exit;

  meDadosEncontrados.Lines.Clear;

  var FirstRequest: IResponse;
  const TempClient = TFDMemTable.Create(nil);
  try
    FirstRequest := TRequest.New.BaseURL('viacep.com.br/ws')
      .Resource(edCep.Text + '/json')
      .ContentType('application/json')
      .DataSetAdapter(TempClient)
      .Get;

    if FirstRequest.StatusCode = 200 then
    begin
      with TempClient do
      begin
        if Fields.FindField('Erro') <> nil then
        begin
          meDadosEncontrados.Lines.Add('Cep não encontrado.');
          Exit;
        end;

        meDadosEncontrados.TextSettings.FontColor := TAlphaColorRec.Black;
        for var i := 0 to Fields.Count - 1 do
          meDadosEncontrados.Lines.Add(Fields[i].FieldName + ': ' + FieldByName(Fields[i].FieldName).AsString);
      end;
    end;
  finally
    FirstRequest._Release;
    FreeAndNil(TempClient);
  end;
end;

end.

