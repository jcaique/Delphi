program FastReportsTest;

uses
  Vcl.Forms,
  UMain in '..\view\UMain.pas' {Form1},
  Reports in '..\reports\Reports.pas' {Reports},
  UTeste in '..\model\UTeste.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
