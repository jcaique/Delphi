object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Localiza'#231#227'o Regional'
  ClientHeight = 567
  ClientWidth = 672
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
  object PageControl: TPageControl
    Left = 40
    Top = 8
    Width = 609
    Height = 481
    ActivePage = tabPais
    TabOrder = 0
    OnChange = PageControlChange
    object tabPais: TTabSheet
      Caption = 'Pais'
      OnShow = tabPaisShow
      ExplicitLeft = 0
      object lblNomePais: TLabel
        Left = 168
        Top = 56
        Width = 64
        Height = 13
        Caption = 'Nome do Pais'
      end
      object txtNomePais: TEdit
        Left = 168
        Top = 75
        Width = 273
        Height = 21
        Cursor = crIBeam
        TabOrder = 0
      end
      object btnAdicionar: TButton
        Left = 136
        Top = 120
        Width = 81
        Height = 25
        Cursor = crHandPoint
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = btnAdicionarClick
      end
      object btnExcluir: TButton
        Left = 223
        Top = 120
        Width = 81
        Height = 25
        Cursor = crHandPoint
        Caption = 'Excluir'
        Enabled = False
        TabOrder = 2
        OnClick = btnExcluirClick
      end
      object btnAlterar: TButton
        Left = 310
        Top = 120
        Width = 81
        Height = 25
        Cursor = crHandPoint
        Caption = 'Alterar'
        Enabled = False
        TabOrder = 3
        OnClick = btnAlterarClick
      end
      object gridPais: TDBGrid
        Left = 0
        Top = 184
        Width = 601
        Height = 266
        DataSource = dsDataSource
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = gridPaisCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cd_Pais'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_Pais'
            Title.Caption = 'Nome'
            Visible = True
          end>
      end
      object btnSalvar: TButton
        Left = 397
        Top = 120
        Width = 81
        Height = 25
        Cursor = crHandPoint
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 5
        OnClick = btnSalvarClick
      end
    end
    object tabEstado: TTabSheet
      Caption = 'Estado'
      ImageIndex = 1
      OnShow = tabEstadoShow
      object lblNomeEstado: TLabel
        Left = 64
        Top = 72
        Width = 127
        Height = 13
        Caption = 'Informe o nome do estado'
      end
      object lblCodPais: TLabel
        Left = 64
        Top = 128
        Width = 118
        Height = 13
        Caption = 'Informe o c'#243'digo do Pais'
      end
      object lblSigla: TLabel
        Left = 282
        Top = 72
        Width = 123
        Height = 13
        Caption = 'Informe a Sigla do Estado'
      end
      object txtEstado: TEdit
        Left = 64
        Top = 91
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object txtCodPais: TEdit
        Left = 64
        Top = 147
        Width = 185
        Height = 21
        TabOrder = 1
      end
      object txtSigla: TEdit
        Left = 282
        Top = 91
        Width = 137
        Height = 21
        TabOrder = 2
      end
      object btnAdicionarEstado: TButton
        Left = 132
        Top = 184
        Width = 79
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 3
        OnClick = btnAdicionarEstadoClick
      end
      object btnExcluirEstado: TButton
        Left = 217
        Top = 184
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
      end
      object btnAlterarEstado: TButton
        Left = 298
        Top = 184
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 5
      end
      object btnSalvarEstado: TButton
        Left = 379
        Top = 184
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 6
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 223
        Width = 595
        Height = 227
        DataSource = dsEstado
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cd_Estado'
            Title.Caption = 'Cod Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cd_Pais'
            Title.Caption = 'Cod Pais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_Estado'
            Title.Caption = 'Descricao Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ds_Sigla'
            Title.Caption = 'Sigla'
            Visible = True
          end>
      end
    end
    object tabMunicipio: TTabSheet
      Caption = 'tabMunicipio'
      ImageIndex = 2
    end
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=jose.leite;Initial Catalog=LocalizacaoRegional;' +
      'Data Source=JOSEPH2\MSSQLLOCALDB'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 512
  end
  object sqlConsulta: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Pais')
    Left = 168
    Top = 512
  end
  object dsDataSource: TDataSource
    AutoEdit = False
    DataSet = sqlConsulta
    Left = 104
    Top = 512
  end
  object sqlConsultaEstado: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Estado')
    Left = 328
    Top = 512
    object sqlConsultaEstadocd_Estado: TAutoIncField
      FieldName = 'cd_Estado'
      ReadOnly = True
    end
    object sqlConsultaEstadocd_Pais: TIntegerField
      FieldName = 'cd_Pais'
    end
    object sqlConsultaEstadods_Estado: TStringField
      FieldName = 'ds_Estado'
      Size = 50
    end
    object sqlConsultaEstadods_Sigla: TStringField
      FieldName = 'ds_Sigla'
      Size = 2
    end
  end
  object dsEstado: TDataSource
    DataSet = sqlConsultaEstado
    Left = 272
    Top = 512
  end
end
