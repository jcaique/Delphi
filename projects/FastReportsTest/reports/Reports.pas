unit Reports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass;

type
  TReports = class(TForm)
    frxReport_RelacaoClientes: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report: TReports;

implementation

{$R *.dfm}

end.
