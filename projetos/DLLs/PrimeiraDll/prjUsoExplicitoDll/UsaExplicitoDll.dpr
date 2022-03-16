program UsaExplicitoDll;

uses
  Vcl.Forms,
  UFormExplicito in 'View\UFormExplicito.pas' {frmExplicito};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExplicito, frmExplicito);
  Application.Run;
end.
