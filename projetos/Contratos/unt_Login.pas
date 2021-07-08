unit unt_Login;

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
    qryUsuariocd_CodigoUsuario: TAutoIncField;
    qryUsuariods_EmailUsuario: TStringField;
    qryUsuariods_NomeUsuario: TStringField;
    qryUsuariods_SenhaUsuario: TStringField;
    btCadastrar: TButton;
    lbAviso: TLabel;
    Label2: TLabel;
    procedure conectarBdIni();
    procedure btCadastrarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edUsuarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  unt_CadastroUsuario, unt_Principal;

{$R *.dfm}
{ TfrmPrincipal }

procedure TfrmPrincipal.btCadastrarClick(Sender: TObject);
begin
  try
    untCadastroUsuario := TuntCadastroUsuario.Create(self);
    untCadastroUsuario.ShowModal;
  finally
    untCadastroUsuario.Free;
  end;
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
  try
    try
      qryUsuario.Close;
      qryUsuario.SQL.Clear;
      qryUsuario.SQL.Text :=
        'select * from Usuarios where ds_EmailUsuario = :pEmail and ds_SenhaUsuario = :pSenha';
      qryUsuario.Parameters.ParamByName('pEmail').Value := edUsuario.Text;
      qryUsuario.Parameters.ParamByName('pSenha').Value := edSenha.Text;
      qryUsuario.Open;

      if qryUsuario.RecordCount > 0 then
      begin
        try
          unt_PrincipalMenu := Tunt_PrincipalMenu.Create(self);
          unt_PrincipalMenu.ShowModal;
        finally
          unt_PrincipalMenu.Free;
        end;
      end
      else
      begin
        lbAviso.Visible := True;
      end;

    except
      on E: Exception do
        Application.MessageBox('Erro ao fazer login.', 'Aviso',
          MB_ICONINFORMATION + MB_OK);
    end;

  finally
    qryUsuario.Close;
  end;
end;

procedure TfrmPrincipal.conectarBdIni;
var
  ini: TIniFile;
  usuario, instancia, bancoNome: String;
begin
  try
    try
      if not FileExists(ExtractFileDir(ParamStr(0) + '\config.ini')) then
      begin
        ini := TIniFile.Create(ExtractFileDir(ParamStr(0) + '\config.ini'));
        ini.WriteString('conexao', 'usuario', 'JOSEPH2');
        ini.WriteString('conexao', 'bancoNome', 'SistemaJc');
        ini.WriteString('conexao', 'instancia', 'JOSEPH2\MSSQLLOCALDB');
      end;

      ini := TIniFile.Create(ExtractFileDir(ParamStr(0) + '\config.ini'));
      usuario := ini.ReadString('conexao', 'usuairo', '');
      bancoNome := ini.ReadString('conexao', 'bancoNome', '');
      instancia := ini.ReadString('conexao', 'instancia', '');

      conexao.Connected := False;
      conexao.ConnectionString :=
        'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog='
        + bancoNome + ';Data Source=' + instancia +
        ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID='
        + usuario +
        ';Use Encryption for Data=False;Tag with column collation when possible=False';
      conexao.Connected := True;
    except
      on E: Exception do
        Application.MessageBox(PWideChar('Ocorreu o seguinte erro: ' +
          E.Message), 'Aviso', MB_ICONINFORMATION + MB_OK);
    end;
  finally
    ini.Free;
  end;
end;

procedure TfrmPrincipal.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnEntrar.Click;
end;

procedure TfrmPrincipal.edUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if lbAviso.Visible then
    lbAviso.Visible := False;
end;

end.
