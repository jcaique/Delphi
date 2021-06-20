object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 527
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 328
    Top = 80
    Width = 160
    Height = 33
    Caption = 'TPageControl'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 224
    Width = 140
    Height = 33
    Caption = 'RadioGroup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 8
    Width = 297
    Height = 177
    ActivePage = c
    TabOrder = 0
    object c: TTabSheet
      Caption = 'Clientes'
      ExplicitHeight = 113
      object RadioButton1: TRadioButton
        Left = 88
        Top = 63
        Width = 113
        Height = 17
        Caption = 'RadioButton1'
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitWidth = 450
      ExplicitHeight = 283
      object Memo1: TMemo
        Left = 56
        Top = 32
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 20
    Top = 191
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    Columns = 2
    Items.Strings = (
      '1'
      '2'
      '3'
      '4')
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 112
    Top = 344
    Width = 401
    Height = 129
    Caption = 'Panel1'
    TabOrder = 2
    object Label3: TLabel
      Left = 320
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 40
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 320
      Top = 104
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
    object Edit1: TEdit
      Left = 32
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
  end
end
