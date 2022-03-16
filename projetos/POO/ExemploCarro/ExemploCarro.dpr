program ExemploCarro;

uses
  Vcl.Forms,
  UFrmMain in 'View\UFrmMain.pas' {FrmMain},
  UCarro in 'Controller\UCarro.pas',
  UAviao in 'Controller\UAviao.pas',
  UMeioTransporte in 'Controller\UMeioTransporte.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
