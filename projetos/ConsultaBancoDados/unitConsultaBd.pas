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
