unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,


  System.IOUtils, Vcl.WinXCtrls, Vcl.ExtCtrls;
type
  TfrmPrincipal = class(TForm)
    btTest: TButton;
    Memo1: TMemo;
    procedure btTestClick(Sender: TObject);
  private
    { Private declarations }
    procedure ListFiles;
    procedure ReadFiles;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

{ TfrmPrincipal }

procedure TfrmPrincipal.btTestClick(Sender: TObject);
begin
  ListFiles;

//  ReadFiles;
end;

procedure TfrmPrincipal.ListFiles;
begin
  var Arquivos := TDirectory.GetFiles('C:\Users\Joseph2\Desktop\estudos\Delphi\projetos\TestFiles\Tests', '*.pas');

  for var Arquivo in Arquivos do
    Memo1.Lines.Add(TPath.GetFileName(Arquivo));
end;

procedure TfrmPrincipal.ReadFiles;
begin
  //Ler um arquivo e salvar em outro
  //Arquivo fixo
//  var OtherFile: TextFile;
//  AssignFile(OtherFile, 'C:\Users\Joseph2\Desktop\estudos\Delphi\projetos\TestFiles\Tests\Arquivo2.pas');
//  Append(OtherFile);//Abre um arquivo existente.
  var OtherFile := TStringList.Create;
  OtherFile.LoadFromFile('C:\Users\Joseph2\Desktop\estudos\Delphi\projetos\TestFiles\Tests\Arquivo2.pas');

//  var MyFile: TextFile;
//  //Cria o arquivo de texto
//  AssignFile(MyFile, 'C:\Users\Joseph2\Desktop\estudos\Delphi\projetos\TestFiles\Tests\MyFile.pas');
//  Reset(MyFile);

  for var i := 0 to OtherFile.Count - 1 do
  begin
    Sleep(2);
    Memo1.Lines.Add('Lendo[' + OtherFile[i] + '] do Arquivo existente.');

    if OtherFile[i].Contains('Arquivo2Teste.pas')  then
      OtherFile.Insert(i + 1, 'AlgumaCoisa');

//    Sleep(2);
//    Memo1.Lines.Add('Gravando[' + OtherFile[i] + '] no novo Arquivo.');
//    WriteLn(MyFile, OtherFile[i]);
  end;

  OtherFile.SaveToFile('C:\Users\Joseph2\Desktop\estudos\Delphi\projetos\TestFiles\Tests\Arquivo2.pas', TEncoding.UTF8);

//  CloseFile(MyFile);
//  CloseFile(OtherFile);
end;

end.
