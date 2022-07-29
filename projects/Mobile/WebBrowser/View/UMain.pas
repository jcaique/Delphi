unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.WebBrowser,
  FMX.Edit, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    Browser: TWebBrowser;
    pnPesquisa: TPanel;
    btNavaegar: TButton;
    edUrl: TEdit;
    btRefresh: TButton;
    Button1: TButton;
    procedure btNavaegarClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btNavaegarClick(Sender: TObject);
begin
  Browser.Navigate(edUrl.Text);
end;

procedure TForm2.btRefreshClick(Sender: TObject);
begin
  Browser.Reload;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Browser.Stop;
end;

end.
