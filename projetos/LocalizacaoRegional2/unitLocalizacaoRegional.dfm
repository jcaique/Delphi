object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Localiza'#231#227'o'
  ClientHeight = 494
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pageControl: TPageControl
    Left = 0
    Top = 0
    Width = 741
    Height = 353
    ActivePage = tabEstado
    TabOrder = 0
    object tabPais: TTabSheet
      Caption = 'Pais'
    end
    object tabEstado: TTabSheet
      Caption = 'Estado'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Button1: TButton
        Left = 256
        Top = 110
        Width = 209
        Height = 59
        Caption = 'Inserir Nomes Aleat'#243'rios'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object tabMunicipio: TTabSheet
      Caption = 'Munic'#237'pio'
      ImageIndex = 2
    end
  end
  object sqlConexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LocalizacaoRegional;Data Source=JOSEPH2' +
      '\MSSQLLOCALDB'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 360
  end
  object sqlQueryPais: TADOQuery
    Active = True
    Connection = sqlConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Pais')
    Left = 88
    Top = 440
    object sqlQueryPaiscd_Pais: TAutoIncField
      FieldName = 'cd_Pais'
      ReadOnly = True
    end
    object sqlQueryPaisds_Pais: TStringField
      FieldName = 'ds_Pais'
      Size = 50
    end
  end
  object dsPais: TDataSource
    DataSet = sqlQueryPais
    Left = 88
    Top = 392
  end
  object dsEstado: TDataSource
    DataSet = sqlQueryEstado
    Left = 200
    Top = 392
  end
  object sqlQueryEstado: TADOQuery
    Active = True
    Connection = sqlConexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Estado')
    Left = 200
    Top = 440
    object sqlQueryEstadocd_Estado: TAutoIncField
      FieldName = 'cd_Estado'
      ReadOnly = True
    end
    object sqlQueryEstadocd_Pais: TIntegerField
      FieldName = 'cd_Pais'
    end
    object sqlQueryEstadods_Estado: TStringField
      FieldName = 'ds_Estado'
      Size = 50
    end
    object sqlQueryEstadods_Sigla: TStringField
      FieldName = 'ds_Sigla'
      Size = 2
    end
  end
end
