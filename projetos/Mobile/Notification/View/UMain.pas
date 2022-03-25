unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Controls.Presentation, FMX.Ani, FMX.Edit, System.Notification;

type
  TMainScreen = class(TForm)
    GradientAnimation1: TGradientAnimation;
    btNotificate: TButton;
    Layout: TLayout;
    ToolBarTop: TToolBar;
    ToolBarBottom: TToolBar;
    edNotificationTitle: TEdit;
    edNotificationBody: TEdit;
    lbTime: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btNotificateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

var
  MainScreen: TMainScreen;


implementation

{$R *.fmx}

procedure TMainScreen.btNotificateClick(Sender: TObject);
var
  Notification: TNotification;
  NotificationCenter: TNotificationCenter; //Existe o componente, mas decidi criar local.
begin
  NotificationCenter := TNotificationCenter.Create(nil);
  try
    Notification := NotificationCenter.CreateNotification;
    Notification.Title := edNotificationTitle.Text;
    Notification.AlertBody := edNotificationBody.Text;
    Notification.RepeatInterval := TRepeatInterval.Second;

    NotificationCenter.PresentNotification(Notification);

  finally
    FreeAndNil(NotificationCenter);
    FreeAndNil(Notification);
  end;
end;

procedure TMainScreen.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  // Like Perform in VCL
  if Key = vkReturn then
  begin
    Key := vkTab;

    Self.KeyDown(Key, KeyChar, Shift);
  end;
end;

procedure TMainScreen.FormShow(Sender: TObject);
begin
  edNotificationTitle.SetFocus;
end;

end.



