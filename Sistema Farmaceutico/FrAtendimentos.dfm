object uFrAtendimentos: TuFrAtendimentos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Atendimentos'
  ClientHeight = 440
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 440
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 19
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 137
      Height = 19
      Caption = 'Farmaceutico Resp.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 344
      Top = 16
      Width = 64
      Height = 19
      Caption = 'Paciente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 68
      Width = 123
      Height = 19
      Caption = 'Lista de Servi'#231'os:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 344
      Top = 72
      Width = 34
      Height = 19
      Caption = 'Obs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 171
      Width = 121
      Height = 46
      Caption = 'Cadastrar'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 143
      Top = 171
      Width = 121
      Height = 46
      Caption = 'Editar'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 287
      Top = 171
      Width = 121
      Height = 46
      Caption = 'Consultar'
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 414
      Top = 171
      Width = 121
      Height = 46
      Caption = 'Excluir'
      OnClick = SpeedButton4Click
    end
    object DBGrid1: TDBGrid
      Left = 14
      Top = 273
      Width = 553
      Height = 153
      DataSource = DSatendimento
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'dt'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_farmaceutico'
          Title.Caption = 'Farmaceutico Responsavel'
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_lista'
          Title.Caption = 'Lista de Procedimentos'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_paciente'
          Title.Caption = 'Paciente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'obs'
          Title.Caption = 'Obs'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor Total'
          Width = 64
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 14
      Top = 233
      Width = 545
      Height = 34
      DataSource = DSatendimento
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      TabOrder = 1
    end
    object edData: TEdit
      Left = 16
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object lcFarmaceutico: TDBLookupComboBox
      Left = 143
      Top = 41
      Width = 169
      Height = 21
      KeyField = 'nome'
      ListField = 'nome'
      ListSource = DSFarmaceutico
      TabOrder = 3
    end
    object lcPaciente: TDBLookupComboBox
      Left = 344
      Top = 41
      Width = 201
      Height = 21
      KeyField = 'cd'
      ListField = 'nome'
      ListSource = DSPaciente
      TabOrder = 4
    end
    object lbLista: TCheckListBox
      Left = 16
      Top = 88
      Width = 305
      Height = 77
      Columns = 2
      ItemHeight = 13
      TabOrder = 5
    end
    object memoObs: TMemo
      Left = 344
      Top = 89
      Width = 201
      Height = 76
      Lines.Strings = (
        '')
      TabOrder = 6
    end
  end
  object DSServicos: TDataSource
    DataSet = DmDB.qryServicos
    Left = 496
    Top = 376
  end
  object DSPaciente: TDataSource
    DataSet = DmDB.qryPacientes
    Left = 488
    Top = 312
  end
  object DSFarmaceutico: TDataSource
    DataSet = DmDB.qryFarmaceuticos
    Left = 424
    Top = 360
  end
  object DSatendimento: TDataSource
    DataSet = DmDB.qryAtendimentos
    Left = 352
    Top = 360
  end
end
