object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'L'#243'gica de Programa'#231#227'o'
  ClientHeight = 452
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 24
    Top = 24
    Width = 76
    Height = 13
    Caption = 'Digite seu nome'
  end
  object lblResultado: TLabel
    Left = 24
    Top = 128
    Width = 249
    Height = 13
    Caption = '--------------------------------------------------------------'
  end
  object lblIdade: TLabel
    Left = 312
    Top = 24
    Width = 76
    Height = 13
    Caption = 'Digite seu nome'
  end
  object txtNome: TEdit
    Left = 24
    Top = 43
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 88
    Top = 70
    Width = 113
    Height = 41
    Caption = 'OKAY'
    TabOrder = 1
    OnClick = btnOkClick
  end
  object txtIdade: TEdit
    Left = 312
    Top = 43
    Width = 249
    Height = 21
    TabOrder = 2
  end
end
