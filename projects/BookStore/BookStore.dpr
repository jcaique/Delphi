program BookStore;

uses
  Vcl.Forms,
  ScreenBookStore in 'ScreenBookStore.pas' {screenRegister};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TscreenRegister, screenRegister);
  Application.Run;
end.
