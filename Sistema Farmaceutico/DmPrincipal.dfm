object DmDB: TDmDB
  OldCreateOrder = False
  Height = 270
  Width = 478
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=farmacia'
      'User_Name=root'
      'Password=Theo2314'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object qryFarmaceuticos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM farmaceutico')
    Left = 32
    Top = 80
    object qryFarmaceuticoscd: TFDAutoIncField
      FieldName = 'cd'
      Origin = 'cd'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFarmaceuticosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object qryFarmaceuticossexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 15
    end
  end
  object qryServicos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM servicos')
    Left = 32
    Top = 136
    object qryServicoscd: TFDAutoIncField
      FieldName = 'cd'
      Origin = 'cd'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryServicostipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
      Size = 40
    end
    object qryServicosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 40
    end
    object qryServicosvalor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 8
      Size = 2
    end
  end
  object qryPacientes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from paciente')
    Left = 32
    Top = 200
    object qryPacientescd: TFDAutoIncField
      FieldName = 'cd'
      Origin = 'cd'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPacientesnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 40
    end
    object qryPacientessexo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 15
    end
    object qryPacientesdt_nascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt_nascimento'
      Origin = 'dt_nascimento'
    end
  end
  object qryAtendimentos: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from atendimento')
    Left = 104
    Top = 32
    object qryAtendimentoscd: TFDAutoIncField
      FieldName = 'cd'
      Origin = 'cd'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryAtendimentosdt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dt'
      Origin = 'dt'
      EditMask = '00/00/0000;1;_'
    end
    object qryAtendimentosobs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      Size = 255
    end
    object qryAtendimentosvalor: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
      Precision = 8
      Size = 2
    end
    object qryAtendimentosnm_farmaceutico: TStringField
      FieldName = 'nm_farmaceutico'
      Origin = 'nm_farmaceutico'
      Required = True
      Size = 40
    end
    object qryAtendimentosnm_paciente: TStringField
      FieldName = 'nm_paciente'
      Origin = 'nm_paciente'
      Required = True
      Size = 40
    end
    object qryAtendimentosnm_lista: TStringField
      FieldName = 'nm_lista'
      Origin = 'nm_lista'
      Required = True
      Size = 255
    end
  end
  object qryAuxiliar: TFDQuery
    Connection = Conexao
    Left = 104
    Top = 88
  end
end
