program TryingResponsive;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'View\UMain.pas' {MainScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainScreen, MainScreen);
  Application.Run;
end.
