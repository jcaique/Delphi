program clientDataSet;

uses
  Vcl.Forms,
  workingWithClientDataSet in 'workingWithClientDataSet.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
