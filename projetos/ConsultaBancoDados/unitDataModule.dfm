object dmDataModule: TdmDataModule
  OldCreateOrder = False
  Height = 308
  Width = 573
  object conexao: TFDConnection
    Params.Strings = (
      'Database=consultabancodelphi'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 16
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 112
    Top = 40
    ParamData = <
      item
        Name = 'paramConsulta'
        ParamType = ptInput
      end>
  end
  object dsDataSource: TDataSource
    DataSet = sqlConsulta
    Left = 56
    Top = 88
  end
end
