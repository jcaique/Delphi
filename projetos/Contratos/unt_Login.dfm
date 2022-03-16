object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Anchors = []
  Caption = 'Entrar no sistema'
  ClientHeight = 284
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lblUsuario: TLabel
    Left = 91
    Top = 88
    Width = 36
    Height = 13
    Align = alCustom
    Caption = 'Usu'#225'rio'
  end
  object lblSenha: TLabel
    Left = 91
    Top = 158
    Width = 30
    Height = 13
    Align = alCustom
    Caption = 'Senha'
  end
  object lbAviso: TLabel
    Left = 120
    Top = 139
    Width = 120
    Height = 13
    Caption = 'Login ou senha inv'#225'lidos!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 115
    Top = 32
    Width = 145
    Height = 24
    Caption = 'Seja bem vindo!'
    Color = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object edUsuario: TEdit
    Left = 82
    Top = 107
    Width = 197
    Height = 21
    Align = alCustom
    TabOrder = 0
    OnKeyPress = edUsuarioKeyPress
  end
  object edSenha: TEdit
    Left = 82
    Top = 177
    Width = 197
    Height = 21
    Align = alCustom
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = edSenhaKeyPress
  end
  object btCadastrar: TButton
    Left = 185
    Top = 214
    Width = 75
    Height = 25
    Align = alCustom
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btCadastrarClick
  end
  object btnEntrar: TButton
    Left = 104
    Top = 214
    Width = 75
    Height = 25
    Align = alCustom
    Caption = 'Entrar'
    TabOrder = 3
    OnClick = btnEntrarClick
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=SistemaJc;Data Source=JOSEPH2\MSSQLLOCA' +
      'LDB;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=' +
      '4096;Workstation ID=JOSEPH2;Use Encryption for Data=False;Tag wi' +
      'th column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 112
  end
  object qryUsuario: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usuarios')
    Left = 16
    Top = 56
    object qryUsuariocd_CodigoUsuario: TAutoIncField
      FieldName = 'cd_CodigoUsuario'
      ReadOnly = True
    end
    object qryUsuariods_EmailUsuario: TStringField
      FieldName = 'ds_EmailUsuario'
    end
    object qryUsuariods_NomeUsuario: TStringField
      FieldName = 'ds_NomeUsuario'
      Size = 100
    end
    object qryUsuariods_SenhaUsuario: TStringField
      FieldName = 'ds_SenhaUsuario'
      Size = 50
    end
  end
  object dsUsuario: TDataSource
    DataSet = qryUsuario
    Left = 18
    Top = 8
  end
end
