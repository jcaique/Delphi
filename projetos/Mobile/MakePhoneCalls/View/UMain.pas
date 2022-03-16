unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, System.Actions, FMX.ActnList,
  FMX.StdActns, FMX.PhoneDialer.Actions, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  FMX.Ani, System.Permissions, Androidapi.Jni.Os, Androidapi.Helpers;

type
  TfrmMain = class(TForm)
    edPhoneNumber: TEdit;
    btCall: TButton;
    Actions: TActionList;
    PhoneCallAction: TPhoneCallAction;
    Bindings: TBindingsList;
    LinkControlToPropertyTelephoneNumber: TLinkControlToProperty;
    FloatKeyAnimation1: TFloatKeyAnimation;
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    FPermissionCallPhone: string;
  public    { Public declarations }
  end;

var
  frmMain: TfrmMain;


implementation

{$R *.fmx}

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  {$IFDEF  ANDROID}
  FPermissionCallPhone := JStringToString(TJManifest_permission.JavaClass.CALL_PHONE);
  {$ENDIF}

  // Ver corretamente a forma de requerer as permissões do usuário (segundo parâmetro está sendo passado como NIL, foi uma POG).
  // Neste exemplo, é requerido do usuário a permissão para fazer ligações.
  PermissionsService.RequestPermissions([Self.FPermissionCallPhone], nil);
end;

end.

// http://blong.com/Articles/AndroidPermissions/DelphiAppPermissions.htm
