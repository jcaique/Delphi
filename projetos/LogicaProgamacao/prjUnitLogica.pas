unit prjUnitLogica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblNome: TLabel;
    txtNome: TEdit;
    btnOk: TButton;
    lblResultado: TLabel;
    txtIdade: TEdit;
    lblIdade: TLabel;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnOkClick(Sender: TObject);
begin
  if (txtNome.Text = '') and (txtIdade.Text = '') then
  begin
    ShowMessage('Digite seu nome e sua idade!');
  end
  else
  begin
    lblResultado.Caption := txtNome.Text + ' ' + txtIdade.Text + ' anos';
    ShowMessage('Tudo Certo!');

  end;

end;

end.
