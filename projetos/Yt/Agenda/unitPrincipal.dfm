object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 523
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 214
    Height = 29
    Caption = 'Agenda de Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 133
    Width = 84
    Height = 13
    Caption = 'Nome do Contato'
  end
  object Label3: TLabel
    Left = 32
    Top = 189
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label4: TLabel
    Left = 32
    Top = 293
    Width = 63
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object Label5: TLabel
    Left = 32
    Top = 411
    Width = 120
    Height = 13
    Caption = 'Data e Hora do Cadastro'
  end
  object DBText1: TDBText
    Left = 32
    Top = 430
    Width = 120
    Height = 17
    DataField = 'data'
    DataSource = DM_Banco.dsContatos
  end
  object Label6: TLabel
    Left = 413
    Top = 117
    Width = 32
    Height = 13
    Caption = 'Buscar'
  end
  object editNome: TDBEdit
    Left = 32
    Top = 152
    Width = 337
    Height = 21
    DataField = 'nome'
    DataSource = DM_Banco.dsContatos
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 208
    Width = 209
    Height = 21
    DataField = 'celular'
    DataSource = DM_Banco.dsContatos
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 32
    Top = 264
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'estaBloqueado'
    DataSource = DM_Banco.dsContatos
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 32
    Top = 312
    Width = 337
    Height = 73
    DataField = 'descricao'
    DataSource = DM_Banco.dsContatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 72
    Width = 400
    Height = 25
    DataSource = DM_Banco.dsContatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 413
    Top = 163
    Width = 320
    Height = 154
    DataSource = DM_Banco.dsContatos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Contatos Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object editBuscar: TEdit
    Left = 413
    Top = 136
    Width = 320
    Height = 21
    TabOrder = 6
    OnChange = editBuscarChange
  end
end
