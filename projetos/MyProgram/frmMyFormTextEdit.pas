unit frmMyFormTextEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmTextEdit = class(TForm)
    txtEditName: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextEdit: TfrmTextEdit;

implementation

{$R *.dfm}

end.
