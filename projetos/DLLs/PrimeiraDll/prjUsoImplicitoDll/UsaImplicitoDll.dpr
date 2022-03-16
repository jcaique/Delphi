program UsaImplicitoDll;

uses
  Vcl.Forms,
  UFormImplicito in 'View\UFormImplicito.pas' {frmUsaDll};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmUsaDll, frmUsaDll);
  Application.Run;
end.
