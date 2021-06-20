object tela1: Ttela1
  Left = 0
  Top = 0
  Caption = 'Consulta ao Banco de Dados'
  ClientHeight = 428
  ClientWidth = 575
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblConsulta: TLabel
    Left = 160
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Digite o nome'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 135
    Height = 81
    Caption = 'Op'#231#245'es de Consulsta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object txtConsulta: TEdit
    Left = 160
    Top = 27
    Width = 413
    Height = 21
    TabOrder = 1
  end
  object btnConsultar: TButton
    Left = 248
    Top = 54
    Width = 217
    Height = 35
    Caption = 'Consultar'
    TabOrder = 2
    OnClick = btnConsultarClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 95
    Width = 565
    Height = 305
    DataSource = dmDataModule.dsDataSource
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idade'
        Title.Alignment = taCenter
        Title.Caption = 'IDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Title.Caption = 'BAIRRO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 266
        Visible = True
      end>
  end
end
