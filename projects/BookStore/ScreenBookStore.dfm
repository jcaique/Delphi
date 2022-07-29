object screenRegister: TscreenRegister
  Left = 0
  Top = 0
  Caption = 'Books Store'
  ClientHeight = 512
  ClientWidth = 711
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
  object formTitle: TLabel
    Left = 24
    Top = 17
    Width = 205
    Height = 33
    Caption = 'Books Register'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTitle: TLabel
    Left = 104
    Top = 72
    Width = 31
    Height = 19
    Caption = 'Title'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAuthor: TLabel
    Left = 104
    Top = 136
    Width = 49
    Height = 19
    Caption = 'Author'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblGender: TLabel
    Left = 104
    Top = 208
    Width = 51
    Height = 19
    Caption = 'Gender'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblLanguage: TLabel
    Left = 160
    Top = 309
    Width = 68
    Height = 19
    Caption = 'Language'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblResume: TLabel
    Left = 445
    Top = 163
    Width = 56
    Height = 19
    Caption = 'Resume'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblWhereBuy: TLabel
    Left = 472
    Top = 309
    Width = 76
    Height = 19
    Caption = 'Where buy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtTitle: TEdit
    Left = 104
    Top = 97
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object txtAuthor: TEdit
    Left = 104
    Top = 161
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object comboBoxGender: TComboBox
    Left = 104
    Top = 233
    Width = 137
    Height = 21
    TabOrder = 2
    Items.Strings = (
      'Romance'
      'AutoHelp'
      'Horror'
      'Adventure')
  end
  object rdPortuguese: TRadioButton
    Left = 160
    Top = 343
    Width = 113
    Height = 17
    Caption = 'Portuguese'
    TabOrder = 3
  end
  object rdEnglish: TRadioButton
    Left = 160
    Top = 366
    Width = 113
    Height = 16
    Caption = 'English'
    TabOrder = 4
  end
  object rdSpanish: TRadioButton
    Left = 160
    Top = 391
    Width = 113
    Height = 17
    Caption = 'Spanish'
    TabOrder = 5
  end
  object isAvailable: TCheckBox
    Left = 445
    Top = 97
    Width = 129
    Height = 17
    Caption = 'Available'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object Resume: TMemo
    Left = 445
    Top = 196
    Width = 249
    Height = 77
    Lines.Strings = (
      'Resume')
    TabOrder = 7
  end
  object CheckBox1: TCheckBox
    Left = 474
    Top = 341
    Width = 97
    Height = 17
    Caption = 'Web'
    TabOrder = 8
  end
  object TCheckBox
    Left = 474
    Top = 365
    Width = 97
    Height = 17
    Caption = 'Phone'
    TabOrder = 9
  end
  object checkBoxStore: TCheckBox
    Left = 474
    Top = 392
    Width = 97
    Height = 17
    Caption = 'Store'
    TabOrder = 10
  end
  object btnSave: TButton
    Left = 228
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 11
  end
  object btnDelete: TButton
    Left = 322
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 12
  end
  object btnFind: TButton
    Left = 419
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Find'
    TabOrder = 13
  end
end
