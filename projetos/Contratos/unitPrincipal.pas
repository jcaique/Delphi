unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  IniFiles;

type
  TfrmPrincipal = class(TForm)
    conexao: TADOConnection;
    qryUsuario: TADOQuery;
    dsUsuario: TDataSource;
    edUsuario: TEdit;
    edSenha: TEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    btnEntrar: TButton;
    procedure conectarBdIni();
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
{ TfrmPrincipal }

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
  conectarBdIni;
end;

procedure TfrmPrincipal.conectarBdIni;
var
  ini: TIniFile;
  usuario, instancia, bancoNome: String;
begin
  try
    if not FileExists(ExtractFileDir(ParamStr(0) + '\config.ini')) then
    begin
      ini := TIniFile.Create(ExtractFileDir(ParamStr(0) + '\config.ini'));
      usuario := ini.WriteString('conexao', 'usuario', ' ');
      bancoNome := ini.WriteString('conexao', 'bancoNome', ' ');
      instancia := ini.WriteString('conexao', 'instancia', ' ');

      conexao.ConnectionString :=
        'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog='
        + bancoNome + ';Data Source=' + instancia +
        ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID='
        + usuario +
        ';Use Encryption for Data=False;Tag with column collation when possible=False';

      ShowMessage('Foi criado: ' + #13 + bancoNome + #13 + usuario + #13 +
        instancia)
    end
    else
      ShowMessage(ParamStr(0));
  except
    on E: Exception do
      Application.MessageBox(PWideChar('Ocorreu o seguinte erro: ' + E.Message),
        'Aviso', MB_ICONINFORMATION + MB_OK);
  end;
end;

end.
