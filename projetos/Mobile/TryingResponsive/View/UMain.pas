unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TMainScreen = class(TForm)
    barTop: TToolBar;
    btTakePhoto: TButton;
    btSearchPhoto: TButton;
    barBottom: TToolBar;
    btExitApp: TButton;
    layoutComponent: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainScreen: TMainScreen;

implementation

{$R *.fmx}

end.
