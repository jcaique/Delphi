unit frmFormEventoBotao3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnVerde: TButton;
    btnVermellho: TButton;
    btnYellow: TButton;
    lblGreen: TLabel;
    lblRed: TLabel;
    lblYellow: TLabel;
    procedure btnVerdeClick(Sender: TObject);
    procedure btnVermellhoClick(Sender: TObject);
    procedure btnYellowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnVerdeClick(Sender: TObject);
begin
  lblGreen.Enabled := true;
  lblYellow.Enabled := false;
  lblRed.Enabled := false;
end;

procedure TForm1.btnVermellhoClick(Sender: TObject);
begin
  lblRed.Enabled := true;
  lblYellow.Enabled := false;
  lblGreen.Enabled := false;
end;

procedure TForm1.btnYellowClick(Sender: TObject);
begin
  lblYellow.Enabled := true;
  lblRed.Enabled := false;
  lblGreen.Enabled := false;
end;

end.
