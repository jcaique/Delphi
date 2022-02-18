unit UForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//Declarando as funcções da Dll (Uso implícito da DLL)
function ParaMaiuscula(str: String): string; stdcall;
  external 'TesteDll.dll' name 'ParaMaiuscula'; //Informando a dll de uso e qual nome da função.

function ParaMinuscula(str: string): string; stdcall;
  external 'TesteDll.dll' name 'ParaMinuscula';

function MeuIntParaStr(Numero: integer): string; stdcall;
  external 'TesteDll.dll' name 'MeuIntParaStr';

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
