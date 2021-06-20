object frmMyFormEvento: TfrmMyFormEvento
  Left = 0
  Top = 0
  Caption = 'Evento com Bot'#227'o'
  ClientHeight = 266
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 224
    Top = 56
    Width = 74
    Height = 24
    Caption = 'R'#243'tulo 1'
    Color = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btnHabilita: TButton
    Left = 128
    Top = 104
    Width = 113
    Height = 33
    Caption = 'Habilitar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnHabilitaClick
  end
  object btnDesabilita: TButton
    Left = 280
    Top = 104
    Width = 113
    Height = 33
    Caption = 'Desabilita'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnDesabilitaClick
  end
end
