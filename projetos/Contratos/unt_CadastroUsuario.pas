unit unt_CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TuntCadastroUsuario = class(TForm)
    btnConfirmar: TButton;
    edNome: TEdit;
    edEmail: TEdit;
    edSenha: TEdit;
    lbNome: TLabel;
    lbEmail: TLabel;
    lbSenhaUsuario: TLabel;
    qryCadUsuario: TADOQuery;
    qryCadUsuariocd_CodigoUsuario: TAutoIncField;
    qryCadUsuariods_EmailUsuario: TStringField;
    qryCadUsuariods_NomeUsuario: TStringField;
    qryCadUsuariods_SenhaUsuario: TStringField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure limparCampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  untCadastroUsuario: TuntCadastroUsuario;

implementation

uses
  unt_Login;

{$R *.dfm}

procedure TuntCadastroUsuario.btnConfirmarClick(Sender: TObject);
begin
  try
    if Trim(edNome.Text) = '' then
    begin
      Application.MessageBox('Nome obrigatório.', 'Aviso',
        mrOk + MB_ICONEXCLAMATION);
      edNome.SetFocus;
      Abort;
    end;

    if Trim(edNome.Text) = '' then
    begin
      Application.MessageBox('Email obrigatório.', 'Aviso',
        mrOk + MB_ICONEXCLAMATION);
      edEmail.SetFocus;
      Abort;
    end;

    if Trim(edNome.Text) = '' then
    begin
      Application.MessageBox('Senha obrigatória.', 'Aviso',
        mrOk + MB_ICONEXCLAMATION);
      edSenha.SetFocus;
      Abort;
    end;

    with qryCadUsuario do
    begin
      Close;
      SQL.Text := 'select * from Usuarios where cd_CodigoUsuario is null';
      Open;
      Append;
    end;

    qryCadUsuariods_EmailUsuario.AsString := edEmail.Text;
    qryCadUsuariods_NomeUsuario.AsString := edNome.Text;
    qryCadUsuariods_SenhaUsuario.AsString := edSenha.Text;
    qryCadUsuario.Post;

    Application.MessageBox('Usuário cadastrado com sucesso.', 'Aviso',
        mrOk + MB_ICONEXCLAMATION);
    limparCampos;
  finally
    qryCadUsuario.Free;
  end;
end;

procedure TuntCadastroUsuario.limparCampos;
begin
  edNome.Text:= EmptyStr;
  edEmail.Text:= EmptyStr;
  edSenha.Text := EmptyStr;
end;

end.
