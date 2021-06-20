unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    painel1: TPanel;
    painel2: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TColorGenerator = class(TObject)
  private
    FRed, FGreen, FBlack: Integer;
  public
    procedure setRed(value: Integer);
    procedure setGreen(value: Integer);
    procedure setBlack(value: Integer);
  end;

var
  Form1: TForm1;

implementation

procedure TColorGenerator.setRed;
begin
  FRed := value;
end;

procedure TColorGenerator.setGreen;
begin
  FGreen := value;
end;

procedure TColorGenerator.setBlack;
begin
  FBlack := value;
end;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var

  rnd: Integer;
begin
  rnd := 255;

  painel1.Color := rgb(random(rnd), random(rnd), random(rnd));
  painel2.Color := rgb(random(rnd), random(rnd), random(rnd));

  painel1.Caption := concat('RGB(', IntToStr(rnd), ',', IntToStr(rnd), ',',
    IntToStr(rnd), ')');

  painel2.Caption := concat('RGB(', IntToStr(rnd), ',', IntToStr(rnd), ',',
    IntToStr(rnd), ')')

end;

end.
