program projetoTesteRepeticao;

uses
  Vcl.Forms,
  UFRM1 in 'UFRM1.pas' {frm1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm1, frm1);
  Application.Run;
end.
