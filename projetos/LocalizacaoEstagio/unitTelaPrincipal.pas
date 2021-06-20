unit unitTelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, ComCtrls, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    conexao: TADOConnection;
    sqlConsulta: TADOQuery;
    dsDataSource: TDataSource;
    PageControl: TPageControl;
    tabPais: TTabSheet;
    tabEstado: TTabSheet;
    tabMunicipio: TTabSheet;
    lblNomePais: TLabel;
    txtNomePais: TEdit;
    btnAdicionar: TButton;
    btnExcluir: TButton;
    btnAlterar: TButton;
    lblNomeEstado: TLabel;
    gridPais: TDBGrid;
    btnSalvar: TButton;
    sqlConsultaEstado: TADOQuery;
    txtEstado: TEdit;
    lblCodPais: TLabel;
    txtCodPais: TEdit;
    txtSigla: TEdit;
    lblSigla: TLabel;
    sqlConsultaEstadocd_Estado: TAutoIncField;
    sqlConsultaEstadocd_Pais: TIntegerField;
    sqlConsultaEstadods_Estado: TStringField;
    sqlConsultaEstadods_Sigla: TStringField;
    btnAdicionarEstado: TButton;
    btnExcluirEstado: TButton;
    btnAlterarEstado: TButton;
    btnSalvarEstado: TButton;
    DBGrid1: TDBGrid;
    dsEstado: TDataSource;
    procedure btnAdicionarClick(Sender: TObject);
    procedure AtualizarGrid(indexTab: Integer);
    procedure FormatacaoInicial(indexTab: Integer);
    procedure FormShow(Sender: TObject);
    procedure gridPaisCellClick(Column: TColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAdicionarEstadoClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure tabPaisShow(Sender: TObject);
    procedure tabEstadoShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAdicionarClick(Sender: TObject);
begin
  sqlConsulta.Close;
  sqlConsulta.SQL.Clear;
  sqlConsulta.SQL.Add('select * from Pais where cd_Pais is null');
  sqlConsulta.Open;

  sqlConsulta.Append; // Acrescentar
  sqlConsultads_Pais.AsString := txtNomePais.Text;
  // Conteúdo a ser acrescentado
  sqlConsulta.Post; // 'postar' alteração no banco

  Application.MessageBox('Pais incluido com sucesso!', 'Aviso',
    MB_ICONINFORMATION + MB_OK);
  // Mensagem a ser mostrada ao usuário (mensagem,tituloDaMensagem,TipoIcone + TipoBotao)

  FormatacaoInicial(PageControl.ActivePageIndex);
end;

procedure TForm1.btnAdicionarEstadoClick(Sender: TObject);
begin
  sqlConsultaEstado.Close;
  sqlConsultaEstado.SQL.Clear;
  sqlConsultaEstado.SQL.Add('select * from Estado where cd_Estado is null');
  sqlConsultaEstado.Open;

  sqlConsultaEstado.Append;
  sqlConsultaEstadods_Estado.AsString := txtEstado.Text;
  sqlConsultaEstadods_Sigla.AsString := txtSigla.Text;
  sqlConsultaEstadocd_Pais.AsInteger := StrToInt(txtCodPais.Text);
  sqlConsultaEstado.Post;

  Application.MessageBox('Estado incluído com sucesso!', 'Aviso',
    MB_ICONINFORMATION + MB_OK);

  FormatacaoInicial(PageControl.ActivePageIndex);
end;

procedure TForm1.btnAlterarClick(Sender: TObject);
begin
  txtNomePais.Text := sqlConsultads_Pais.AsString;
  txtNomePais.Enabled := True;
  btnExcluir.Enabled := False;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  sqlConsulta.Delete;

  Application.MessageBox('Pais removido com sucesso!', 'Aviso',
    MB_ICONINFORMATION + MB_OK);

  FormatacaoInicial(PageControl.ActivePageIndex);
end;

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
  sqlConsulta.Edit; // Informando que o grid está em edição
  sqlConsultads_Pais.AsString := txtNomePais.Text;
  // colocando o texto editado no grid
  sqlConsulta.Post;

  Application.MessageBox('Pais alterado com sucesso!', 'Aviso',
    MB_ICONINFORMATION + MB_OK);
  txtNomePais.Text := '';

  FormatacaoInicial(PageControl.ActivePageIndex);
end;

procedure TForm1.gridPaisCellClick(Column: TColumn);
begin
  btnAdicionar.Enabled := False;
  txtNomePais.Enabled := False;
  btnExcluir.Enabled := True;
  btnAlterar.Enabled := True;
  btnSalvar.Enabled := True;
end;

procedure TForm1.PageControlChange(Sender: TObject);
begin
  AtualizarGrid(PageControl.ActivePageIndex);
end;

procedure TForm1.tabEstadoShow(Sender: TObject);
begin
  FormatacaoInicial(PageControl.ActivePageIndex);
end;

procedure TForm1.tabPaisShow(Sender: TObject);
begin
  AtualizarGrid(PageControl.ActivePageIndex);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PageControl.Pages[0].Show;
end;

procedure TForm1.AtualizarGrid(indexTab: Integer);
begin
  // Procedure criada para refeltir as alterações feitas no Grid

  if indexTab = 0 then
  begin
    sqlConsulta.Close;
    sqlConsulta.SQL.Clear;
    sqlConsulta.SQL.Add('select * from Pais');
    sqlConsulta.Open;
  end
  else if indexTab = 1 then
  begin
    sqlConsultaEstado.Close();
    sqlConsultaEstado.SQL.Clear;
    sqlConsultaEstado.SQL.Add('select * from Estado');
    sqlConsultaEstado.Open;
  end;
end;

procedure TForm1.FormatacaoInicial(indexTab: Integer);
begin

  if indexTab = 0 then
  begin
    btnAdicionar.Enabled := True;
    btnExcluir.Enabled := False;
    btnAlterar.Enabled := False;
    btnSalvar.Enabled := False;
    txtNomePais.Enabled := True;
    txtNomePais.SetFocus;
    txtNomePais.Text := '';

    AtualizarGrid(indexTab); // Passando o indice da tab
  end
  else if indexTab = 1 then
  begin
    btnAdicionarEstado.Enabled := True;
    btnExcluirEstado.Enabled := False;
    btnSalvarEstado.Enabled := False;
    btnAlterarEstado.Enabled := False;
    txtEstado.Enabled := True;
    txtEstado.SetFocus;
    txtNomePais.Text := '';

    AtualizarGrid(indexTab);
  end;
end;

end.
