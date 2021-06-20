object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 407
  ClientWidth = 582
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
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
    object System1: TMenuItem
      Caption = 'System'
      object settings1: TMenuItem
        Caption = 'settings'
      end
      object usuarios1: TMenuItem
        Caption = 'users'
        object newuser1: TMenuItem
          Caption = 'new user'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        ShortCut = 112
      end
    end
    object New1: TMenuItem
      Caption = 'New'
      object customers1: TMenuItem
        Caption = 'customers'
      end
      object suplyiers1: TMenuItem
        Caption = 'suplyiers'
      end
    end
  end
end
