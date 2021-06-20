object frmClientDataSet: TfrmClientDataSet
  Left = 0
  Top = 0
  Caption = 'frmClientDataSet'
  ClientHeight = 496
  ClientWidth = 893
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 265
    Height = 321
    DataSource = dsBanco
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 460
    Top = 104
    Width = 425
    Height = 321
    DataSource = dsCds
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 312
    Top = 208
    Width = 75
    Height = 25
    Caption = '--------->>>'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object cds: TClientDataSet
    PersistDataPacket.Data = {
      460000009619E0BD01000000180000000200000000000300000046000763645F
      5061697304000100000000000764735F50616973010049000000010005574944
      54480200020064000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 56
    object cdscd_Pais: TIntegerField
      DisplayWidth = 11
      FieldName = 'cd_Pais'
    end
    object cdsds_Pais: TStringField
      DisplayWidth = 20
      FieldName = 'ds_Pais'
      Size = 100
    end
    object cdsteste: TStringField
      DisplayWidth = 29
      FieldKind = fkCalculated
      FieldName = 'teste'
      Size = 100
      Calculated = True
    end
  end
  object dsCds: TDataSource
    DataSet = cds
    Left = 488
    Top = 56
  end
  object connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LocalizacaoRegional;Data Source=JOSEPH2' +
      '\MSSQLLOCALDB'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 8
  end
  object qryPaises: TADOQuery
    Connection = connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Pais')
    Left = 80
    Top = 8
    object qryPaisescd_Pais: TAutoIncField
      FieldName = 'cd_Pais'
      ReadOnly = True
    end
    object qryPaisesds_Pais: TStringField
      FieldName = 'ds_Pais'
      Size = 50
    end
  end
  object dsBanco: TDataSource
    DataSet = qryPaises
    Left = 136
    Top = 56
  end
end
