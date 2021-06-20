object frmCadastroPacientes: TfrmCadastroPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 509
  ClientWidth = 752
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
  object Label3: TLabel
    Left = 112
    Top = 101
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 24
    Top = 157
    Width = 86
    Height = 13
    Caption = 'NOME COMPLETO'
  end
  object Label5: TLabel
    Left = 24
    Top = 213
    Width = 44
    Height = 13
    Caption = 'CELULAR'
  end
  object Label6: TLabel
    Left = 200
    Top = 213
    Width = 85
    Height = 13
    Caption = 'DATA CADASTRO'
  end
  object Label7: TLabel
    Left = 384
    Top = 101
    Width = 92
    Height = 13
    Caption = 'BUSCAR PACIENTE'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 81
    Align = alTop
    TabOrder = 7
    object Label1: TLabel
      Left = 48
      Top = 32
      Width = 101
      Height = 25
      Caption = 'Pacientes'
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
      DataSource = dm.dsPacientes
      TabOrder = 0
    end
  end
  object dbEdt_id: TDBEdit
    Left = 24
    Top = 120
    Width = 65
    Height = 21
    DataField = 'id'
    DataSource = dm.dsPacientes
    TabOrder = 0
  end
  object dbEdt_Nome: TDBEdit
    Left = 24
    Top = 176
    Width = 337
    Height = 21
    DataField = 'nome'
    DataSource = dm.dsPacientes
    TabOrder = 2
  end
  object dbEdt_cpf: TDBEdit
    Left = 112
    Top = 120
    Width = 153
    Height = 21
    DataField = 'cpf'
    DataSource = dm.dsPacientes
    MaxLength = 14
    TabOrder = 1
  end
  object dbEdt_celular: TDBEdit
    Left = 24
    Top = 232
    Width = 121
    Height = 21
    DataField = 'celular'
    DataSource = dm.dsPacientes
    MaxLength = 17
    TabOrder = 3
  end
  object dbEdit_dtCadastro: TDBEdit
    Left = 200
    Top = 232
    Width = 121
    Height = 21
    DataField = 'dt_Cadastro'
    DataSource = dm.dsPacientes
    ReadOnly = True
    TabOrder = 4
  end
  object dgGrindPacientes: TDBGrid
    Left = 384
    Top = 144
    Width = 360
    Height = 345
    DataSource = dm.dsPacientes
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object edtBuscarPacientes: TEdit
    Left = 384
    Top = 120
    Width = 360
    Height = 21
    TabOrder = 5
    OnChange = edtBuscarPacientesChange
  end
end
