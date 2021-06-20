unit mainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    System1: TMenuItem;
    settings1: TMenuItem;
    usuarios1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    New1: TMenuItem;
    customers1: TMenuItem;
    suplyiers1: TMenuItem;
    newuser1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
