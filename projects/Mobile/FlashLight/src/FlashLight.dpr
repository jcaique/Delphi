program FlashLight;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMainScreen in '..\View\UMainScreen.pas' {frmMainScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMainScreen, frmMainScreen);
  Application.Run;
end.
