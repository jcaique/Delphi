object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'TestFailis'
  ClientHeight = 491
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clInactiveBorder
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btTest: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 0
    OnClick = btTestClick
  end
  object Memo1: TMemo
    Left = 216
    Top = 0
    Width = 365
    Height = 491
    Align = alRight
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveBorder
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitHeight = 357
  end
end
