unit UTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.TitleBarCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    TitleBarCustom: TTitleBarPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Tal(metodo: TProc);
    procedure Sin;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  var button := TButton.Create(nil);
  button.Caption := 'Teste';
  button.Align := alClient;

  var panel := TPanel.Create(nil);
  panel.Align := alRight;
  panel.BevelOuter := bvNone;
  panel.Height := 20;
  panel.Width := 20;

  button.Parent := panel;

  TitleBarCustom.InsertControl(panel);

  Tal(Sin);
end;

procedure TForm1.Sin;
begin
  ShowMessage('é');
end;

procedure TForm1.Tal(metodo: TProc);
begin
  Execute();

end;

end.

