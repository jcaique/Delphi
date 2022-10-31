unit uMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  Datasnap.Provider,
  FMX.StdCtrls,
  IPPeerClient,
  IPPeerServer,
  System.Tether.Manager,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Controls.Presentation,
  System.ImageList,
  FMX.ImgList,
  FMX.Clipboard.Win,
  FMX.Clipboard,
  System.Rtti,
  FMX.Platform,
  FMX.Edit,
  FMX.ExtCtrls,
  FMX.Ani,
  FMX.MultiView,
  FMX.Objects,
  uUserOptions;

type
  TfrmMain = class(TForm)
    btCleanAll: TSpeedButton;
    btParse: TSpeedButton;
    btParseToSql: TSpeedButton;
    edVarName: TEdit;
    imgGeneralList: TImageList;
    lbLinhaDelphiCode: TLabel;
    lbLinhaSQL: TLabel;
    lbTitle1: TLabel;
    lbTitle2: TLabel;
    meDelphiText: TMemo;
    meSQLQueryText: TMemo;
    pnFormatedText: TPanel;
    pnRawText: TPanel;
    Spliter: TSplitter;
    styleApp: TStyleBook;
    FloatAnimation1: TFloatAnimation;
    pnMultiViewOptions: TPanel;
    MultiViewOptions: TMultiView;
    btOptions: TSpeedButton;
    rectOptions: TRectangle;
    chkTrimLeft: TCheckBox;
    chkInlineVar: TCheckBox;
    animationRectOptions: TFloatAnimation;
    chkConcatStrings: TCheckBox;
    animationRectOptions2: TFloatAnimation;
    procedure btCleanAllClick(Sender: TObject);
    procedure btParseClick(Sender: TObject);
    procedure btParseToSqlClick(Sender: TObject);
    procedure edVarNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meDelphiTextPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure meSQLQueryTextPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure MultiViewOptionsResized(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure chkInlineVarClick(Sender: TObject);
    procedure chkTrimLeftClick(Sender: TObject);
    procedure chkConcatStringsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    var
      varName: string;
    function LineCount(AText: TStrings): Integer;
    procedure CopyToClipBoard(Text: string);
    procedure FormatTextDelphiToSql;
    procedure FormatTextSqlToDelphi;
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
  const CHAR_QUOTE = #39;
  const CHAR_SPACE = #32;
  const CHAR_SEMICOLON = #59;
  const CHAR_PLUS = #43;

  meDelphiText.Lines.Clear;

  for var i := 0 to meSQLQueryText.Lines.Count - 1 do
  begin
    var line := meSQLQueryText.Lines.Strings[i];
    line := line.Replace(#39, #39#39, [rfReplaceAll]);

    if line.Trim.IsEmpty then
      Continue;

    if chkTrimLeft.IsChecked then
      line := line.TrimLeft;

    if chkConcatStrings.IsChecked then
      line := CHAR_QUOTE + line.Trim + CHAR_SPACE + CHAR_QUOTE + CHAR_PLUS
    else
      line := CHAR_QUOTE + line.Trim + CHAR_SPACE + CHAR_QUOTE + CHAR_SEMICOLON;

    if meDelphiText.Lines.Count = 0 then
    begin
      line := varName + ' := ' + line;
      if chkInlineVar.IsChecked then
        line := 'var ' + line;
    end
    else
    begin
      if not chkConcatStrings.IsChecked then
        line := varName + ' := ' + varName + ' + ' + line
      else if i = meSQLQueryText.Lines.Count - 1 then
        line[line.Length] := CHAR_SEMICOLON;
    end;

    meDelphiText.Lines.Add(line);
  end;
  CopyToClipBoard(meDelphiText.Lines.Text);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TUserOptions.SaveUserOptions;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  meSQLQueryText.SetFocus;
  varName := edVarName.Text;

  TUserOptions.LoadUserOptions;
  chkTrimLeft.IsChecked := UserOptions.TrimLeftSpaces;
  chkInlineVar.IsChecked := UserOptions.DeclareInlineVar;
  chkConcatStrings.IsChecked := UserOptions.ConcatStrings;
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

procedure TfrmMain.meSQLQueryTextPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  lbLinhaSQL.Text := LineCount((Sender as TMemo).Lines).ToString + ' Linhas';
end;

procedure TfrmMain.meDelphiTextPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  lbLinhaDelphiCode.Text := LineCount((Sender as TMemo).Lines).ToString + ' Linhas';
end;

function TfrmMain.LineCount(AText: TStrings): Integer;
begin
  Result := AText.Count;

  if AText.Text.Trim.IsEmpty then
    Result := 0;
end;

procedure TfrmMain.MultiViewOptionsResized(Sender: TObject);
begin
  pnMultiViewOptions.width := MultiViewOptions.Width;
  rectOptions.Visible := MultiViewOptions.IsShowed;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  pnRawText.Height := Trunc(Self.Height / 2) - 43;
end;

procedure TfrmMain.chkConcatStringsClick(Sender: TObject);
begin
  UserOptions.ConcatStrings := not chkConcatStrings.IsChecked;
end;

procedure TfrmMain.chkInlineVarClick(Sender: TObject);
begin
  UserOptions.DeclareInlineVar := not chkInlineVar.IsChecked;
end;

procedure TfrmMain.chkTrimLeftClick(Sender: TObject);
begin
  UserOptions.TrimLeftSpaces := not chkTrimLeft.IsChecked;
end;

end.

