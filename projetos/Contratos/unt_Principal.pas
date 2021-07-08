unit unt_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus;

type
  Tunt_PrincipalMenu = class(TForm)
    MainMenu1: TMainMenu;
    itemMenuConfigs: TMenuItem;
    itemMenuAlterarSenha: TMenuItem;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unt_PrincipalMenu: Tunt_PrincipalMenu;

implementation

{$R *.dfm}

end.
