object formTeste: TformTeste
  Left = 0
  Top = 0
  Caption = 'formTeste'
  ClientHeight = 383
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbTeste: TLabel
    Left = 304
    Top = 128
    Width = 35
    Height = 13
    Caption = 'lbTeste'
  end
  object edTeste: TEdit
    Left = 192
    Top = 88
    Width = 281
    Height = 21
    MaxLength = 10
    TabOrder = 0
    OnKeyDown = edTesteKeyDown
    OnKeyPress = edTesteKeyPress
    OnMouseDown = edTesteMouseDown
  end
end
