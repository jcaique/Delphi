object frmButtonExample: TfrmButtonExample
  Left = 0
  Top = 0
  Caption = 'Button Example'
  ClientHeight = 269
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnMyButton: TButton
    Left = 192
    Top = 200
    Width = 175
    Height = 41
    Caption = '&Run'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = btnMyButtonClick
  end
end
