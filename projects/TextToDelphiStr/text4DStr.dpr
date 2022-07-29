program text4DStr;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  uMain in 'view\uMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
