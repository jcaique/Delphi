object frmPrincipal: TfrmPrincipal
  AlignWithMargins = True
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'Utilizando .INI'
  ClientHeight = 261
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsuario: TLabel
    AlignWithMargins = True
    Left = 125
    Top = 66
    Width = 36
    Height = 13
    Align = alCustom
    Caption = 'Usu'#225'rio'
    ExplicitLeft = 110
    ExplicitTop = 51
  end
  object lblSenha: TLabel
    AlignWithMargins = True
    Left = 125
    Top = 121
    Width = 30
    Height = 13
    Align = alCustom
    Caption = 'Senha'
    ExplicitLeft = 116
    ExplicitTop = 112
  end
  object edUsuario: TEdit
    AlignWithMargins = True
    Left = 125
    Top = 85
    Width = 209
    Height = 21
    Align = alCustom
    TabOrder = 0
    ExplicitLeft = 113
    ExplicitTop = 73
  end
  object edSenha: TEdit
    AlignWithMargins = True
    Left = 125
    Top = 140
    Width = 209
    Height = 21
    Align = alCustom
    PasswordChar = '*'
    TabOrder = 1
    ExplicitLeft = 119
    ExplicitTop = 134
  end
  object btnEntrar: TButton
    AlignWithMargins = True
    Left = 189
    Top = 179
    Width = 75
    Height = 25
    Align = alCustom
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = btnEntrarClick
    ExplicitLeft = 186
    ExplicitTop = 176
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=dbLogin;Data Source=JOSEPH2\MSSQLLOCALD' +
      'B'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 32
  end
  object qryUsuario: TADOQuery
    Connection = conexao
    Parameters = <>
    SQL.Strings = (
      'select * from usuario')
    Left = 24
    Top = 80
  end
  object dsUsuario: TDataSource
    DataSet = qryUsuario
    Left = 64
    Top = 80
  end
end
