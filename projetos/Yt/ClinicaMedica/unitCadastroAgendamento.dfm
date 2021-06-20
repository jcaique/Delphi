object frmCadastroAgendamentos: TfrmCadastroAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Agendamentos'
  ClientHeight = 348
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 101
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 104
    Top = 101
    Width = 86
    Height = 13
    Caption = 'NOME COMPLETO'
  end
  object Label3: TLabel
    Left = 24
    Top = 157
    Width = 27
    Height = 13
    Caption = 'DATA'
  end
  object Label5: TLabel
    Left = 104
    Top = 157
    Width = 29
    Height = 13
    Caption = 'HORA'
  end
  object Label6: TLabel
    Left = 24
    Top = 213
    Width = 78
    Height = 13
    Caption = 'ESPECIALIDADE'
  end
  object Label7: TLabel
    Left = 24
    Top = 277
    Width = 40
    Height = 13
    Caption = 'M'#201'DICO'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 733
    object Label1: TLabel
      Left = 48
      Top = 32
      Width = 156
      Height = 25
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 360
      Top = 18
      Width = 330
      Height = 45
      DataSource = dm.dsAgendamentos
      TabOrder = 0
    end
  end
  object dbEdt_id: TDBEdit
    Left = 24
    Top = 120
    Width = 65
    Height = 21
    DataField = 'id'
    DataSource = dm.dsAgendamentos
    TabOrder = 1
  end
  object da: TDBLookupComboBox
    Left = 104
    Top = 120
    Width = 233
    Height = 21
    DataField = 'id_paciente'
    DataSource = dm.dsAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = dm.dsPacientes
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 176
    Width = 65
    Height = 21
    DataField = 'dt_agendamento'
    DataSource = dm.dsAgendamentos
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 176
    Width = 65
    Height = 21
    DataField = 'hora'
    DataSource = dm.dsAgendamentos
    MaxLength = 5
    TabOrder = 4
  end
  object dbCbxEspecialidades: TDBComboBox
    Left = 24
    Top = 232
    Width = 201
    Height = 21
    DataField = 'especialidade'
    DataSource = dm.dsAgendamentos
    Items.Strings = (
      'Cardiologista'
      'Neurologista'
      'Ortopedispa'
      'Otorrino'
      'Ginecologista')
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 296
    Width = 313
    Height = 21
    DataField = 'medico'
    DataSource = dm.dsAgendamentos
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 120
    Width = 422
    Height = 197
    DataSource = dm.dsAgendamentos
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dt_agendamento'
        Title.Caption = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'medico'
        Title.Caption = 'M'#201'DICO'
        Visible = True
      end>
  end
end
