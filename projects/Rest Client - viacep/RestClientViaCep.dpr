program RestClientViaCep;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMain in 'view\UMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
