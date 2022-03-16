object unt_PrincipalMenu: Tunt_PrincipalMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 337
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 318
    Width = 756
    Height = 19
    Panels = <>
    ExplicitLeft = 272
    ExplicitTop = 80
    ExplicitWidth = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 756
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 176
    ExplicitWidth = 150
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 56
    object itemMenuConfigs: TMenuItem
      Caption = 'Configura'#231#245'es'
      object itemMenuAlterarSenha: TMenuItem
        Caption = 'Alterar senha'
      end
    end
  end
end
