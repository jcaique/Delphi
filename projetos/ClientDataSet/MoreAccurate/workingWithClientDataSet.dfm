object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Working with TClientDataSet'
  ClientHeight = 359
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Orientation = 1
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object lbValor1: TLabel
    Left = 15
    Top = 10
    Width = 57
    Height = 19
    Caption = 'Valor 1:'
    OnClick = lbValor1Click
  end
  object lbValor2: TLabel
    Left = 15
    Top = 66
    Width = 57
    Height = 19
    Caption = 'Valor 2:'
  end
  object lbResultado: TLabel
    Left = 39
    Top = 142
    Width = 81
    Height = 19
    Caption = 'Resultado:'
  end
  object gridValores: TDBGrid
    Left = 285
    Top = 8
    Width = 484
    Height = 345
    DataSource = dsValores
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Orientation = 1
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'primeiroValor'
        Title.Alignment = taCenter
        Title.Caption = 'Valor 1'
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'segundoValor'
        Title.Alignment = taCenter
        Title.Caption = 'Valor 2'
        Width = 107
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'operacao'
        Title.Alignment = taCenter
        Title.Caption = 'Opera'#231#227'o'
        Width = 112
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'resultado'
        Title.Alignment = taCenter
        Title.Caption = 'Resultado'
        Visible = True
      end>
  end
  object edValor1: TEdit
    Left = 15
    Top = 31
    Width = 121
    Height = 27
    OEMConvert = True
    TabOrder = 1
    OnKeyPress = edValor1KeyPress
  end
  object edValor2: TEdit
    Left = 15
    Top = 88
    Width = 121
    Height = 28
    TabOrder = 2
    OnKeyPress = edValor2KeyPress
  end
  object edResultado: TEdit
    Left = 16
    Top = 163
    Width = 127
    Height = 54
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Alignment = taCenter
    BevelInner = bvNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  object btSomar: TButton
    Left = 184
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 4
    OnClick = btSomarClick
  end
  object btSubtrair: TButton
    Left = 184
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 5
    OnClick = btSubtrairClick
  end
  object btLimpar: TButton
    Left = 184
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btLimparClick
  end
  object btAdicionar: TButton
    Left = 184
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 7
    OnClick = btAdicionarClick
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 334
    Width = 271
    Height = 17
    BarColor = clGreen
    BackgroundColor = clBackground
    TabOrder = 8
  end
  object cdsGuardaResultados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 240
    object cdsGuardaResultadosprimeiroValor: TFloatField
      FieldName = 'primeiroValor'
    end
    object cdsGuardaResultadossegundoValor: TFloatField
      FieldName = 'segundoValor'
    end
    object cdsGuardaResultadosoperacao: TStringField
      FieldName = 'operacao'
    end
    object cdsGuardaResultadosresultado: TFloatField
      FieldName = 'resultado'
    end
  end
  object dsValores: TDataSource
    DataSet = cdsGuardaResultados
    Left = 456
    Top = 160
  end
end
