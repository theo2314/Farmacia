object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sistema Farmaceutico'
  ClientHeight = 447
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 447
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 702
    ExplicitHeight = 31
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Cadastrar1: TMenuItem
      Caption = 'Cadastrar'
      object CadastroPaciente1: TMenuItem
        Action = AcPaciente
      end
      object CadastroFarmaceutico1: TMenuItem
        Action = AcFarmaceutico
      end
      object CadastroServios1: TMenuItem
        Action = AcServicos
      end
      object Atendimentos1: TMenuItem
        Action = AcAtendimentos
      end
    end
  end
  object AC: TActionList
    Left = 72
    Top = 8
    object AcPaciente: TAction
      Caption = 'Cadastro de Paciente'
      OnExecute = AcPacienteExecute
    end
    object AcFarmaceutico: TAction
      Caption = 'Cadastro Farmaceutico'
      OnExecute = AcFarmaceuticoExecute
    end
    object AcServicos: TAction
      Caption = 'Cadastro Servi'#231'os'
      OnExecute = AcServicosExecute
    end
    object AcAtendimentos: TAction
      Caption = 'Atendimentos'
      OnExecute = AcAtendimentosExecute
    end
  end
end
