object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'First Program'
  ClientHeight = 146
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object labelName: TLabel
    Left = 104
    Top = 43
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object textName: TEdit
    Left = 144
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'your name'
  end
  object btnOk: TButton
    Left = 136
    Top = 83
    Width = 81
    Height = 22
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOkClick
  end
end
