object untCadastroUsuario: TuntCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 279
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    524
    279)
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 112
    Top = 50
    Width = 87
    Height = 13
    Caption = 'Informe seu nome'
  end
  object lbEmail: TLabel
    Left = 112
    Top = 103
    Width = 49
    Height = 13
    Caption = 'Seu E-mail'
  end
  object lbSenhaUsuario: TLabel
    Left = 112
    Top = 153
    Width = 50
    Height = 13
    Caption = 'Sua senha'
  end
  object btnConfirmar: TButton
    Left = 224
    Top = 224
    Width = 73
    Height = 25
    Anchors = []
    Caption = 'Confirmar'
    TabOrder = 0
    OnClick = btnConfirmarClick
  end
  object edNome: TEdit
    Left = 96
    Top = 66
    Width = 337
    Height = 21
    TabOrder = 1
  end
  object edEmail: TEdit
    Left = 96
    Top = 119
    Width = 337
    Height = 21
    TabOrder = 2
  end
  object edSenha: TEdit
    Left = 96
    Top = 172
    Width = 337
    Height = 21
    TabOrder = 3
  end
  object qryCadUsuario: TADOQuery
    Connection = frmPrincipal.conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Usuarios')
    Left = 24
    Top = 40
    object qryCadUsuariocd_CodigoUsuario: TAutoIncField
      FieldName = 'cd_CodigoUsuario'
      ReadOnly = True
    end
    object qryCadUsuariods_EmailUsuario: TStringField
      FieldName = 'ds_EmailUsuario'
    end
    object qryCadUsuariods_NomeUsuario: TStringField
      FieldName = 'ds_NomeUsuario'
      Size = 100
    end
    object qryCadUsuariods_SenhaUsuario: TStringField
      FieldName = 'ds_SenhaUsuario'
      Size = 50
    end
  end
end
