unit UFormImplicito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmUsaDll = class(TForm)
    edText: TEdit;
    btMaiuscula: TButton;
    btMinuscula: TButton;
    seNumber: TSpinEdit;
    lbTextoMaiuscula: TLabel;
    lbNumber: TLabel;
    edTextConverted: TEdit;
    Button2: TButton;
    procedure btMaiusculaClick(Sender: TObject);
    procedure btMinusculaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

  // Utilizando recursos da DLL de forma Implicita

//Declarando as funcções da Dll                                //Informando a dll de uso e qual nome da função.
function ParaMaiuscula(str: string): string; stdcall; external 'TesteDll.dll' name 'ParaMaiuscula';

function ParaMinuscula(str: string): string; stdcall; external 'TesteDll.dll' name 'ParaMinuscula';

function MeuIntParaStr(Numero: integer): string; stdcall; external 'TesteDll.dll' name 'MeuIntParaStr';

var
  frmUsaDll: TfrmUsaDll;


implementation

{$R *.dfm}

procedure TfrmUsaDll.btMaiusculaClick(Sender: TObject);
begin
  edText.Text := ParaMaiuscula(edText.Text);
end;

procedure TfrmUsaDll.btMinusculaClick(Sender: TObject);
begin
  edText.Text := ParaMinuscula(edText.Text);
end;

procedure TfrmUsaDll.Button2Click(Sender: TObject);
begin
  edTextConverted.text := MeuIntParaStr(seNumber.Value);
end;

end.

