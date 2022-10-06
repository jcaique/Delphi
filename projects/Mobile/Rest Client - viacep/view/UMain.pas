unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, System.RES;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Button1: TButton;
    procedure RadioButton2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    const
      sBaseUrl = 'viacep.com.br/';

    procedure GetEndereco(url: string; bycep: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TForm1.GetEndereco(url: string; bycep: boolean);
begin
  var Request := TRestRequest.Create;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  Edit1.Text := '';

  if RadioButton2.IsChecked then
  begin
    Edit1.TextPrompt := 'Informe o logradouro...';
    Edit1.MaxLength := 100;
  end
  else
  begin
    Edit1.TextPrompt := 'Informe o cep...';
    Edit1.MaxLength := 8;
  end;

  Edit1.SetFocus;
end;

end.

