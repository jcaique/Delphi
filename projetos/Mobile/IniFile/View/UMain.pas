unit UMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, System.IOUtils, System.IniFiles;

type
  TfrmMain = class(TForm)
    edName: TEdit;
    edEmail: TEdit;
    btSave: TButton;
    procedure btSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FileIni: TIniFile;
    function GetPath: string;
    procedure ReadIni;
    procedure WriteIni;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.btSaveClick(Sender: TObject);
begin
  //if (Trim(edName.Text) = '') or (Trim(edEmail.text) = '') then
  WriteIni;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  ReadIni;
end;

function TfrmMain.GetPath: string;
begin       //Caminho de documentos do Devide + caracter delimitador de caminhos "\"
  Result := TPath.GetDocumentsPath + PathDelim + 'TIniFile.ini';
end;

procedure TfrmMain.ReadIni;
begin
  FileIni := TIniFile.Create(GetPath);
  try
    if FileIni.ValueExists('USER', 'NAME') then
      edName.Text := FileIni.ReadString('USER', 'NAME', #0);

    if FileIni.ValueExists('USER', 'EMAIL') then
      edEmail.Text := FileIni.ReadString('USER', 'EMAIL', #0);
  finally
    FreeAndNil(FileIni);
  end;
end;

procedure TfrmMain.WriteIni;
begin
  FileIni := TIniFile.Create(GetPath);
  try
    FileIni.WriteString('USER', 'NAME', edName.Text);
    FileIni.WriteString('USER', 'EMAIL', edEmail.Text);
  finally
    FreeAndNil(FileIni);
  end;
end;

end.
