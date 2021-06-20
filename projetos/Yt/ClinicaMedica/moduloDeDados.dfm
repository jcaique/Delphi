object dm: Tdm
  OldCreateOrder = False
  Height = 370
  Width = 486
  object conexaoBd: TFDConnection
    Params.Strings = (
      'Database=clinicamedica'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object tblPacientes: TFDTable
    Active = True
    AfterInsert = tblPacientesAfterInsert
    IndexFieldNames = 'id'
    Connection = conexaoBd
    UpdateOptions.UpdateTableName = 'clinicamedica.paciente'
    TableName = 'clinicamedica.paciente'
    Left = 200
    Top = 48
    object tblPacientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tblPacientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tblPacientescelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##) # #####-####;1;_'
      Size = 16
    end
    object tblPacientesdt_Cadastro: TDateField
      FieldName = 'dt_Cadastro'
      Origin = 'dt_Cadastro'
      Required = True
    end
    object tblPacientescpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###-##;1;_'
      Size = 14
    end
  end
  object tblAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexaoBd
    UpdateOptions.UpdateTableName = 'clinicamedica.agendamento'
    TableName = 'clinicamedica.agendamento'
    Left = 344
    Top = 48
    object tblAgendamentosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tblAgendamentosid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tblAgendamentosdt_agendamento: TDateField
      FieldName = 'dt_agendamento'
      Origin = 'dt_agendamento'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tblAgendamentoshora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tblAgendamentosespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tblAgendamentosmedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 80
    end
  end
  object dsPacientes: TDataSource
    DataSet = tblPacientes
    Left = 200
    Top = 112
  end
  object dsAgendamentos: TDataSource
    DataSet = tblAgendamentos
    Left = 344
    Top = 112
  end
end
