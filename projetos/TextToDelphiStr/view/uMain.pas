unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Datasnap.Provider, FMX.StdCtrls, IPPeerClient, IPPeerServer,
  System.Tether.Manager, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList, FMX.Clipboard.Win,
  FMX.Clipboard, System.Rtti, FMX.Platform, FMX.Edit;

type
  TfrmMain = class(TForm)
    btCleanAll: TSpeedButton;
    btCopy: TSpeedButton;
    btParse: TSpeedButton;
    edVarName: TEdit;
    imgGeneralList: TImageList;
    lbTitle1: TLabel;
    lbTitle2: TLabel;
    meFormatedText: TMemo;
    meRawText: TMemo;
    pnFormatedText: TPanel;
    pnRawText: TPanel;
    styleApp: TStyleBook;
    procedure btParseClick(Sender: TObject);
    procedure btCopyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edVarNameChange(Sender: TObject);
    procedure btCleanAllClick(Sender: TObject);
  private
    { Private declarations }
    procedure FormatText;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  varName: string;

implementation

{$R *.fmx}

procedure TfrmMain.btParseClick(Sender: TObject);
begin
  if varName.IsEmpty then
    ShowMessage('Type the variable string name.');

  FormatText;
end;

procedure TfrmMain.edVarNameChange(Sender: TObject);
begin
  varName := edVarName.Text;
end;

procedure TfrmMain.FormatText;
begin
  meFormatedText.Lines.Clear;

  for var i := 0 to meRawText.Lines.Count - 1 do
  begin
    var line := meRawText.Lines.Strings[i];
    line := line.Replace(#39, #39#39, [rfReplaceAll]);
    line := #39 + line + #32#39#59;

    if i = 0 then
      line := varName + ' := ' + line
    else
      line := varName + ' := ' + varName + ' + ' + line;

    meFormatedText.Lines.Add(line);
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  meRawText.SetFocus;
  varName := edVarName.Text;
end;

procedure TfrmMain.btCleanAllClick(Sender: TObject);
begin
  meFormatedText.Lines.Clear;
  meRawText.Lines.Clear;
end;

procedure TfrmMain.btCopyClick(Sender: TObject);
begin
  if meFormatedText.Lines.Text.IsEmpty then
    Exit;

  var clip: IFMXClipboardService;
  if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, clip) then
    clip.SetClipboard(TValue.FromVariant(meFormatedText.Lines.Text));
end;

end.

