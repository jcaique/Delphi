unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Datasnap.Provider, FMX.StdCtrls, IPPeerClient, IPPeerServer,
  System.Tether.Manager, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList, FMX.Clipboard.Win,
  FMX.Clipboard, System.Rtti, FMX.Platform, FMX.Edit, FMX.ExtCtrls, FMX.Ani;

type
  TfrmMain = class(TForm)
    btParse: TSpeedButton;
    edVarName: TEdit;
    imgGeneralList: TImageList;
    lbTitle1: TLabel;
    lbTitle2: TLabel;
    meDelphiText: TMemo;
    meSQLQueryText: TMemo;
    pnFormatedText: TPanel;
    pnRawText: TPanel;
    styleApp: TStyleBook;
    btParseToSql: TSpeedButton;
    chkInlineVar: TCheckBox;
    btCleanAll: TSpeedButton;
    Spliter: TSplitter;
    procedure btParseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edVarNameChange(Sender: TObject);
    procedure btCleanAllClick(Sender: TObject);
    procedure btParseToSqlClick(Sender: TObject);
  private
    { Private declarations }
    var
      varName: string;

    procedure FormatTextSqlToDelphi;
    procedure FormatTextDelphiToSql;
    procedure CopyToClipBoard(Text: string);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btParseClick(Sender: TObject);
begin
  if varName.Trim.IsEmpty then
  begin
    ShowMessage('Type the variable string name.');
    Exit
  end;

  FormatTextSqlToDelphi;
end;

procedure TfrmMain.btParseToSqlClick(Sender: TObject);
begin
  FormatTextDelphiToSql;
end;

procedure TfrmMain.edVarNameChange(Sender: TObject);
begin
  varName := edVarName.Text.Trim;
end;

procedure TfrmMain.FormatTextDelphiToSql;
begin
  meSQLQueryText.Lines.Clear;

  for var i := 0 to meDelphiText.Lines.Count - 1 do
  begin
    var line := meDelphiText.Lines.Strings[i];

    if (line.IndexOf(#39) < 0) or (line.LastIndexOf(#39) < 0) then
      Continue;

    // Removes the text before and after the quotes
    line := line.Remove(0, line.IndexOf(#39) + 1);
    line := line.Remove(line.LastIndexOf(#39), line.Length);

    line := line.Replace(#39#39, #39, [rfReplaceAll]);

    meSQLQueryText.Lines.Add(line);
  end;

  CopyToClipBoard(meSQLQueryText.Lines.Text);
end;

procedure TfrmMain.FormatTextSqlToDelphi;
begin
  meDelphiText.Lines.Clear;

  for var i := 0 to meSQLQueryText.Lines.Count - 1 do
  begin
    var line := meSQLQueryText.Lines.Strings[i];
    line := line.Replace(#39, #39#39, [rfReplaceAll]);

    if line.Trim.IsEmpty then
      Continue;

    line := #39 + line + #32#39#59;

    if meDelphiText.Lines.Count = 0 then
    begin
      line := varName + ' := ' + line;

      if chkInlineVar.IsChecked then
        line := 'var ' + line;
    end
    else
      line := varName + ' := ' + varName + ' + ' + line;

    meDelphiText.Lines.Add(line);
  end;

  CopyToClipBoard(meDelphiText.Lines.Text);
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  meSQLQueryText.SetFocus;
  varName := edVarName.Text;


end;

procedure TfrmMain.btCleanAllClick(Sender: TObject);
begin
  meDelphiText.Lines.Clear;
  meSQLQueryText.Lines.Clear;
end;

procedure TfrmMain.CopyToClipBoard(Text: string);
begin
  if Text.IsEmpty then
    Exit;

  var clip: IFMXClipboardService;
  if TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, clip) then
    clip.SetClipboard(TValue.FromVariant(Text));
end;

end.

