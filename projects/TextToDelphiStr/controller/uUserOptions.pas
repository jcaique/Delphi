unit uUserOptions;

interface

uses
  System.IOUtils,
  System.IniFiles,
  FMX.StdCtrls,
  System.SysUtils;

type
  TUserOptions = record
    ConcatStrings: Boolean;
    TrimLeftSpaces: Boolean;
    DeclareInlineVar: Boolean;

    class procedure SaveOptions; static;
    class procedure ReadOptions; static;

  strict private
    class procedure CreateUserOptionsIni; static;
  end;

const
  SYS_FOLDER = PathDelim + 'stringer';
  SYS_USER_OPTIONS_FOLDER = PathDelim + 'userOptions';
  SYS_USER_INI = PathDelim + 'userOptions.ini';

var
  UserOptions: TUserOptions;
  IniUserOpt: TIniFile;

implementation

{ TUserOptions }

class procedure TUserOptions.CreateUserOptionsIni;
begin
  if not TDirectory.Exists(TPath.GetSharedDocumentsPath + SYS_FOLDER + SYS_USER_OPTIONS_FOLDER) then
    TDirectory.CreateDirectory(TPath.GetSharedDocumentsPath + SYS_FOLDER + SYS_USER_OPTIONS_FOLDER);

  IniUserOpt := TIniFile.Create(TPath.GetSharedDocumentsPath + SYS_FOLDER + SYS_USER_OPTIONS_FOLDER + SYS_USER_INI);
end;

class procedure TUserOptions.ReadOptions;
begin
  CreateUserOptionsIni;

  UserOptions.ConcatStrings := IniUserOpt.ReadBool('userOptions', 'ConcatStrings', UserOptions.ConcatStrings);
  UserOptions.TrimLeftSpaces := IniUserOpt.ReadBool('userOptions', 'TrimLeftSpaces', UserOptions.TrimLeftSpaces);
  UserOptions.DeclareInlineVar := IniUserOpt.ReadBool('userOptions', 'DeclareInlineVar', UserOptions.DeclareInlineVar);
end;

class procedure TUserOptions.SaveOptions;
begin
  IniUserOpt.WriteBool('userOptions', 'ConcatStrings', UserOptions.ConcatStrings);
  IniUserOpt.WriteBool('userOptions', 'TrimLeftSpaces', UserOptions.TrimLeftSpaces);
  IniUserOpt.WriteBool('userOptions', 'DeclareInlineVar', UserOptions.DeclareInlineVar);
end;

end.

