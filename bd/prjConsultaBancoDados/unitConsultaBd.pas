unit unitConsultaBd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Ttela1 = class(TForm)
    RadioGroup1: TRadioGroup;
    lblConsulta: TLabel;
    txtConsulta: TEdit;
    btnConsultar: TButton;
    DBGrid1: TDBGrid;
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tela1: Ttela1;
 implementation

{$R *.dfm}
  uses unitDataModule;

// ON CLICK DO BOTÃO / CONSULTA PERSONALIZADA
procedure Ttela1.btnConsultarClick(Sender: TObject);
begin

  dmDataModule.sqlConsulta.Close;
  // fechando a consulta feita anteriormente (seria a conexão?)

  dmDataModule.sqlConsulta.SQL.Clear;
  // limpando as consultas anteriores (seria o cache/buffere?)

  if RadioGroup1.ItemIndex = 0 then
  begin
    dmDataModule.sqlConsulta.SQL.Add('SELECT * FROM  clientes where nome like :paramConsulta');
    // adicionando um comando à consulta que se deseja fazer na base
    dmDataModule.sqlConsulta.ParamByName('paramConsulta').AsString := '%'+txtConsulta.Text+'%'
    //informando que o paramConsulta é o txtConsulta para fazer a consulta
  end
  else if RadioGroup1.ItemIndex = 1 then
  begin
    dmDataModule.sqlConsulta.SQL.Add('select * from clientes where bairro like :paramConsulta');
    // adicionando um comando à consulta que se deseja fazer na base
    dmDataModule.sqlConsulta.ParamByName('paramConsulta').AsString := '%'+txtConsulta.Text+'%';
  end;

  dmDataModule.sqlConsulta.Open;
  //realizando a abertura da consulta
end;

procedure Ttela1.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    lblConsulta.Caption := 'Digite o nome';
  end;

  if RadioGroup1.ItemIndex = 1 then
  begin
    lblConsulta.Caption := 'Digite o bairro';
  end;

end;

end.

{
  1 - Criar um 'form' Data Module (file - new - other - Database - DataModule) - dm

  2 - Na paleta FireDac inserir dentro do dataModule os componentes conection,
      query.

  3 - Na paleta DataAccess inserir tambem dentro do dataModule o DataSource

  4 - Configuirando o componente de conexão:
      Double Click na conexão:
        Dar um nomne à conexão;
        Escolher o drive (tipo do banco 'mysql' no caso do xampp) ;
        Informar o nome do banco;
        Informar o nome do usuario (por padrao o root);
        A senha do banco;
        O servidor (por enquanto é o local).

  5 - Configurar o componente QUERY:
      Verificar se apropriedade CONNECTION está apontando para a coonexão previamente
      configurada;
      Dar um nome à query;
      Colocar como true a propriedade active;
      Configurar a propriedade sql (foi colocado um comando padrão);
      Configurar o params, onde damos um nome ao parametro(o qual é atribuido
      um txt vindo do form, e é utilizado dentro da string de comando).

  6 - DATA SOURCE
      Dar um nome ao data source - ds;
      Configurar a propriedade dataSet, setando como valor o componente query configurando
      no passo anterior.

  7 - LIGAR O FORM AO DATAMODULE (file - useUnit - selecionar a unit do DM)
      Fazendo isto o dbGrid estará 'enxergando' os componentes do DM.

  8 - No dbGrid:
      Selecionar o dataSource(ds) (o qual está sendo enxergado graças ao passo 7)  e
      configurar como active a consulta (expandir na hora de setar o ds)

  9 - IGNORAR - ao ler esta unit será interpretado.
      dm.sqlConsult.Close;
      dm.sqlConsult.SQL.Clear;
      dm.sqlConsult.SQL.Add('comando');
      dm.sqlConsult.Open;



}
