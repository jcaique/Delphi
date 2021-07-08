unit workingWithClientDataSet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    gridValores: TDBGrid;
    edValor1: TEdit;
    lbValor1: TLabel;
    edValor2: TEdit;
    lbValor2: TLabel;
    edResultado: TEdit;
    lbResultado: TLabel;
    btSomar: TButton;
    btSubtrair: TButton;
    btLimpar: TButton;
    btAdicionar: TButton;
    cdsGuardaResultados: TClientDataSet;
    cdsGuardaResultadosprimeiroValor: TFloatField;
    cdsGuardaResultadossegundoValor: TFloatField;
    cdsGuardaResultadosoperacao: TStringField;
    cdsGuardaResultadosresultado: TFloatField;
    dsValores: TDataSource;
    ProgressBar1: TProgressBar;
    procedure btSomarClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure validaEntrada();
    procedure edValor1KeyPress(Sender: TObject; var Key: Char);
    procedure edValor2KeyPress(Sender: TObject; var Key: Char);
    procedure btAdicionarClick(Sender: TObject);
    procedure randomTeste();
    procedure lbValor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  strOperacao: String;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btAdicionarClick(Sender: TObject);
begin
  if not(Trim(edResultado.Text) <> '') then
  begin
    edValor1.SelectAll;
    edValor1.SetFocus;
    Abort;
  end;

  if not cdsGuardaResultados.Active then
    cdsGuardaResultados.CreateDataSet;

  cdsGuardaResultados.Close;
  cdsGuardaResultados.Open;
  cdsGuardaResultados.Insert;
  cdsGuardaResultadosprimeiroValor.AsString := edValor1.Text;
  cdsGuardaResultadossegundoValor.AsString := edValor2.Text;
  cdsGuardaResultadosoperacao.AsString := strOperacao;
  cdsGuardaResultadosresultado.AsString := edResultado.Text;
  cdsGuardaResultados.Post;

  // if Application.MessageBox('Deseja limpar os campos?', 'Aviso', MB_YESNO) = ID_YES then
  // btLimpar.Click;
end;

procedure TfrmPrincipal.btLimparClick(Sender: TObject);
begin
  edValor1.Clear;
  edValor2.Clear;
  edResultado.Clear;
  strOperacao := EmptyStr;
end;

procedure TfrmPrincipal.btSomarClick(Sender: TObject);
begin
  validaEntrada;
  strOperacao := '+'; // Marca a operação como soma

  edResultado.Text := FloatToStr(StrToFloat(edValor1.Text) +
    StrToFloat(edValor2.Text));
end;

procedure TfrmPrincipal.btSubtrairClick(Sender: TObject);
begin
  validaEntrada;
  strOperacao := '-';

  edResultado.Text := FloatToStr(StrToFloat(edValor1.Text) -
    StrToFloat(edValor2.Text));
end;

procedure TfrmPrincipal.edValor1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8, #127]) then
    Key := #0;
end;

procedure TfrmPrincipal.edValor2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0' .. '9', ',', #8, #127]) then
    Key := #0;
end;

procedure TfrmPrincipal.lbValor1Click(Sender: TObject);
begin
  randomTeste;
end;

procedure TfrmPrincipal.randomTeste;
var
  i : integer;
begin

  ProgressBar1.Max := 10000;
  for I := 0 to 10000 do
  begin
    edValor1.Text := FloatToStr(Random(10) * 0.99);
    edValor2.Text := FloatToStr(Random(10) * 0.99);

    btSomar.Click;
    btAdicionar.Click;

    if StrToFloat(edValor1.Text) < StrToFloat(edValor2.Text) then
    begin
      btSubtrair.Click;
      btAdicionar.Click;
    end;
    ProgressBar1.Position := i;
  end;

  // ShowMessage(edValor1.Text4);
  // randomTeste;
end;

procedure TfrmPrincipal.validaEntrada;
begin
  try
    StrToFloat(edValor1.Text);
    StrToFloat(edValor2.Text);
  except
    ShowMessage('Digite um número real válido!');
    Abort;
  end;
end;

end.
