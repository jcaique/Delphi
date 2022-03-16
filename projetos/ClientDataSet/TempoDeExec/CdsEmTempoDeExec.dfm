object frmExec: TfrmExec
  Left = 0
  Top = 0
  Caption = 'Train'
  ClientHeight = 408
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbGridTrain: TDBGrid
    Left = 322
    Top = 8
    Width = 315
    Height = 392
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btTrain: TButton
    Left = 136
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btTrainClick
  end
end
