object uFrServicos: TuFrServicos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Servi'#231'os'
  ClientHeight = 250
  ClientWidth = 349
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
    Width = 349
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 174
      Height = 23
      Caption = 'Cadastro de Servi'#231'os'
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
    Width = 349
    Height = 209
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 94
      Height = 19
      Caption = 'Tipo Servi'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 73
      Height = 19
      Caption = 'Descri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 159
      Top = 6
      Width = 43
      Height = 19
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbTipo: TComboBox
      Left = 8
      Top = 31
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Domiciliar'
      Items.Strings = (
        'Domiciliar'
        'Press'#227'o Arterial'
        'Temperatura Corporal'
        'Glicecima Capilar'
        'Inala'#231#227'o'
        'Aplica'#231#227'o de Injet'#225'veis')
    end
    object edDescricao: TEdit
      Left = 8
      Top = 97
      Width = 249
      Height = 21
      TabOrder = 1
    end
    object edValor: TEdit
      Left = 159
      Top = 31
      Width = 98
      Height = 21
      TabOrder = 2
    end
  end
  object btCadastrar: TButton
    Left = 80
    Top = 184
    Width = 122
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btCadastrarClick
  end
end
