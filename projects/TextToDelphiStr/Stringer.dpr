program Stringer;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'view\uMain.pas' {frmMain},
  uUserOptions in 'controller\uUserOptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
