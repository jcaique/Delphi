unit UFormExplicito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Samples.Spin, System.ShareMem;

type
  TfrmExplicito = class(TForm)
    edText: TEdit;
    btMaiuscula: TButton;
    btMinuscula: TButton;
    seNumber: TSpinEdit;
    lbTextoMaiuscula: TLabel;
    lbNumber: TLabel;
    edTextConverted: TEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure btMaiusculaClick(Sender: TObject);
    procedure btMinusculaClick(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

const
  CaminhoDllTeste: string = 'C:\Users\Joseph2\Desktop\estudos\Delphi\projetos\DLLs\PrimeiraDll\TesteDll\Win32\Release\TesteDll.dll';


var
  frmExplicito: TfrmExplicito;


implementation

{$R *.dfm}

procedure TfrmExplicito.btMaiusculaClick(Sender: TObject);
type               //Este funcionará como o cabeçalho da função da Dll
  TParaMaiusculo = function(str: ShortString): ShortString; safecall; //Tbm tem o stdcall... Ver diferença depois
var
  TesteDll: HModule; // Esta variável guardará a Dll (Pesquisar mais sobre este tipo)
  ParaMaiusculo: TParaMaiusculo; //Esta variável com mesmo cabeçalho da função da Dll receberá o
                                 //endereço onde a implementação se encontra o qual é carregado da própria Dll
begin
  //Carrega a Dll
  TesteDll := LoadLibrary(PWideChar(CaminhoDllTeste));
  try
    //Carrega a função da Dll
    @ParaMaiusculo := GetProcAddress(TesteDll, 'ParaMaiuscula');

    //Utilizando a função da Dll
    edText.text := ParaMaiusculo(edText.text);
  finally
    FreeLibrary(TesteDll);
  end;
end;

procedure TfrmExplicito.btMinusculaClick(Sender: TObject);
type
  TParaMinuscula = function(str: ShortString): ShortString; stdcall;
var
  TesteDll: HModule;
  ParaMinuscula: TParaMinuscula;
begin
  TesteDll := 0;

  TesteDll := LoadLibrary(PWideChar(CaminhoDllTeste));
  try
    if TesteDll = 0 then
    begin
      ShowMessage('Deu ruim... Dll não carregada amigo.');
      Exit;
    end;

    @ParaMinuscula := GetProcAddress(TesteDll, 'ParaMinuscula');
    edText.Text := ParaMinuscula(edText.Text);
  finally
    FreeLibrary(TesteDll);
  end;
end;

procedure TfrmExplicito.Button2Click(Sender: TObject);
type
  TMeuIntParaStr = function(NumeroInt: integer): ShortString; safecall;
var
  TesteDll: HModule;
  MeuIntParaStr: TMeuIntParaStr;
begin
  TesteDll := LoadLibrary(PWideChar(CaminhoDllTeste));
  try
    if TesteDll <> 0 then
    begin
      @MeuIntParaStr := GetProcAddress(TesteDll, 'MeuIntParaStr');
      edTextConverted.Text := MeuIntParaStr(seNumber.Value);
    end;
  finally
    FreeLibrary(TesteDll)
  end;
end;

end.

