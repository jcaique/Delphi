object frm1: Tfrm1
  Left = 0
  Top = 0
  Caption = 'frm1'
  ClientHeight = 438
  ClientWidth = 711
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
  object lb1: TLabel
    Left = 176
    Top = 8
    Width = 3
    Height = 13
  end
  object lb2: TLabel
    Left = 176
    Top = 32
    Width = 3
    Height = 13
  end
  object grade_Dados: TDBGrid
    Left = 40
    Top = 120
    Width = 617
    Height = 265
    DataSource = ds_Dados
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cds_Dados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 64
    object cds_Dadoscd_Cod: TIntegerField
      FieldName = 'cd_Cod'
    end
    object cds_Dadosds_Nome: TStringField
      FieldName = 'ds_Nome'
      Size = 1000
    end
    object cds_Dadosfl_Repete: TStringField
      FieldKind = fkCalculated
      FieldName = 'fl_Repete'
      Size = 1
      Calculated = True
    end
  end
  object ds_Dados: TDataSource
    DataSet = cds_Dados
    Left = 120
    Top = 64
  end
end
