unit frmEvento2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEventoBotao2 = class(TForm)
    lblTexto: TLabel;
    txtTexto: TEdit;
    btnAdicionar: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure txtTextoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEventoBotao2: TfrmEventoBotao2;

implementation

{$R *.dfm}

procedure TfrmEventoBotao2.btnAdicionarClick(Sender: TObject);
begin
  lblTexto.Font.Size := 15;
  lblTexto.Caption := txtTexto.Text;
end;

procedure TfrmEventoBotao2.txtTextoChange(Sender: TObject);
begin
  lblTexto.Caption := '';
end;

end.
