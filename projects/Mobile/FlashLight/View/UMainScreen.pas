unit UMainScreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  System.ImageList, FMX.ImgList, FMX.Objects, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Media, System.Permissions, Androidapi.Jni.Os,
  Androidapi.Helpers, Androidapi.JNI.JavaTypes;

type
  TfrmMainScreen = class(TForm)
    Layout: TLayout;
    StatusBarBottom: TStatusBar;
    StatusBarTop: TStatusBar;
    imFlashLight: TImage;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private    { Private declarations }
    procedure StatusFlashLight;
  public    { Public declarations }
  end;

var
  frmMainScreen: TfrmMainScreen;
  PowerLightMode: Boolean = False;


implementation

{$R *.fmx}

{ TfrmMainScreen }

procedure TfrmMainScreen.Button1Click(Sender: TObject);
begin
  PowerLightMode := not PowerLightMode;

  if PowerLightMode then
    Button1.Text := 'Desligar'
  else
    Button1.Text := 'Ligar';

  StatusFlashLight;
end;

procedure TfrmMainScreen.FormCreate(Sender: TObject);
var
  Permission: string;
begin
  Permission := JStringToString(TJManifest_permission.JavaClass.CAMERA);

  PermissionsService.RequestPermissions([Permission], nil);
end;

procedure TfrmMainScreen.StatusFlashLight;
var
  FlashLight: TCameraComponent;
begin
  FlashLight.Create(nil);
  try
    FlashLight.Kind := TCameraKind.BackCamera;

    FlashLight.HasFlash;
    FlashLight.HasTorch;

    if PowerLightMode then
      FlashLight.TorchMode := TTorchMode.ModeOn
    else
      FlashLight.TorchMode := TTorchMode.ModeOff
  finally
    FreeAndNil(FlashLight);
  end;
end;

end.

