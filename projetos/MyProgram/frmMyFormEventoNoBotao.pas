unit frmMyFormEventoNoBotao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMyFormEvento = class(TForm)
    lbl1: TLabel;
    btnHabilita: TButton;
    btnDesabilita: TButton;
    procedure btnHabilitaClick(Sender: TObject);
    procedure btnDesabilitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMyFormEvento: TfrmMyFormEvento;

implementation

{$R *.dfm}

procedure TfrmMyFormEvento.btnDesabilitaClick(Sender: TObject);
begin
  btnHabilita.Enabled := true;
  btnDesabilita.Enabled := false;
  lbl1.Caption := 'Desabilitado!';
  lbl1.Font.Color := clRed;
end;

procedure TfrmMyFormEvento.btnHabilitaClick(Sender: TObject);
begin
  btnHabilita.Enabled := false;
  btnDesabilita.Enabled := true;
  lbl1.Font.Color := clGreen;
  lbl1.Caption := 'Habilitado!';
end;

procedure TfrmMyFormEvento.FormCreate(Sender: TObject);
begin
  if lbl1.Enabled then
  begin
    btnHabilita.Enabled := false;
  end
end;

end.
