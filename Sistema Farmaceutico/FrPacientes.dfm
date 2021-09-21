object uFrPacientes: TuFrPacientes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 236
  ClientWidth = 489
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 184
      Height = 23
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 489
    Height = 195
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 111
      Height = 19
      Caption = 'Nome Paciente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 68
      Width = 125
      Height = 19
      Caption = 'Data Nascimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 232
      Top = 16
      Width = 40
      Height = 19
      Caption = 'Sexo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TEdit
      Left = 16
      Top = 41
      Width = 161
      Height = 21
      TabOrder = 0
    end
    object edNascimento: TEdit
      Left = 16
      Top = 93
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object btCadastrar: TButton
      Left = 16
      Top = 136
      Width = 125
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 2
      OnClick = btCadastrarClick
    end
    object cbSexo: TComboBox
      Left = 232
      Top = 41
      Width = 145
      Height = 21
      TabOrder = 3
      Items.Strings = (
        'Masculino'
        'Feminino')
    end
  end
end
