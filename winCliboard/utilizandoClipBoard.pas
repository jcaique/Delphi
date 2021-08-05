unit utilizandoClipBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Clipbrd;

type
  TForm1 = class(TForm)
    edTeste: TEdit;
    procedure edTesteKeyPress(Sender: TObject; var Key: Char);
    procedure edTesteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edTesteKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8, #13, #27, #127]) then
  begin
    Key := #0;
    Exit;
  end;
  {
    Verificando se a tecla digitada no edTeste � um
    n�mero de zero a nove ('0'..'9'), ou se � a tecla de
    backspace(#8), enter (#13), esc (#27) ou a tecla Del (#127).
    Se n�o for umas destas teclas, ser� atribu�da ao caractere
    digitado um caractere de nulo (#0) e n�o executar mais nada
    no m�todo keypress.
  }
end;

procedure TForm1.edTesteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
    Clipboard: TClipboard;
begin
  try
    Clipboard := TClipboard.Create();
    Clipboard.Clear;
  finally
    FreeAndNil(Clipboard);
  end;
  {
    A partir da api Vcl.Clipbrd, foi criada uma vari�vel
    do tipo TClipboard. Ao ser clicado no edTeste (MouseDown)
    ser� limpado o que estiver por l�.
  }
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  edTeste.SetFocus;
end;

end.
