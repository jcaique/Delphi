object frmUsaDll: TfrmUsaDll
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio que faz uso de uma DLL'
  ClientHeight = 156
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTextoMaiuscula: TLabel
    Left = 8
    Top = 4
    Width = 73
    Height = 13
    Caption = 'Digite um texto'
  end
  object lbNumber: TLabel
    Left = 8
    Top = 77
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object edText: TEdit
    Left = 8
    Top = 23
    Width = 353
    Height = 21
    TabOrder = 0
  end
  object btMaiuscula: TButton
    Left = 8
    Top = 46
    Width = 169
    Height = 25
    Caption = 'Mai'#250'scula'
    TabOrder = 1
    OnClick = btMaiusculaClick
  end
  object btMinuscula: TButton
    Left = 200
    Top = 46
    Width = 161
    Height = 25
    Caption = 'Min'#250'scula'
    TabOrder = 2
    OnClick = btMinusculaClick
  end
  object seNumber: TSpinEdit
    Left = 8
    Top = 96
    Width = 169
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object edTextConverted: TEdit
    Left = 198
    Top = 96
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 103
    Top = 124
    Width = 161
    Height = 25
    Caption = 'Convert'
    TabOrder = 5
    OnClick = Button2Click
  end
end
