unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Clientes1: TMenuItem;
    RelaodeClientes1: TMenuItem;
    Sobre1: TMenuItem;
    procedure RelaodeClientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Reports;

{$R *.dfm}

procedure TForm1.RelaodeClientes1Click(Sender: TObject);
begin
  Report := TReports.Create(Application);
  Report.frxReport_RelacaoClientes.ShowReport;
end;

end.
