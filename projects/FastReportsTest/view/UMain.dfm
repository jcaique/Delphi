object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fast Report'
  ClientHeight = 499
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowMenu = Clientes1
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      object RelaodeClientes1: TMenuItem
        Caption = 'Rela'#231#227'o de Clientes'
        OnClick = RelaodeClientes1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
    end
  end
end
