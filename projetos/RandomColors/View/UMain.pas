unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    pnColor1: TPanel;
    pnColor2: TPanel;
    btGenerateColor: TButton;
    procedure btGenerateColorClick(Sender: TObject);
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
  frmMain: TfrmMain;

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

procedure TfrmMain.btGenerateColorClick(Sender: TObject);
var

  rnd: Integer;
begin
  rnd := 255;

  pnColor1.Color := rgb(random(rnd), random(rnd), random(rnd));
  pnColor2.Color := rgb(random(rnd), random(rnd), random(rnd));

  pnColor1.Caption := concat('RGB(', IntToStr(rnd), ',', IntToStr(rnd), ',',
    IntToStr(rnd), ')');

  pnColor2.Caption := concat('RGB(', IntToStr(rnd), ',', IntToStr(rnd), ',',
    IntToStr(rnd), ')')
end;

end.
