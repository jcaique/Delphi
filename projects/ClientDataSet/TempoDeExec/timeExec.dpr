program timeExec;

uses
  Vcl.Forms,
  CdsEmTempoDeExec in 'CdsEmTempoDeExec.pas' {frmExec};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExec, frmExec);
  Application.Run;
end.
