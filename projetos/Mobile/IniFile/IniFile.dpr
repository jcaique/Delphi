program IniFile;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'View\UMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
