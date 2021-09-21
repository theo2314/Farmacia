object uFrFarmaceuticos: TuFrFarmaceuticos
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Farmaceuticos'
  ClientHeight = 212
  ClientWidth = 450
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
    Width = 450
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 226
      Height = 23
      Caption = 'Cadastro de Farmaceuticos'
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
    Top = 57
    Width = 450
    Height = 155
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 146
      Height = 19
      Caption = 'Nome Farmaceutico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
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
      Left = 8
      Top = 41
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object btCadastrar: TButton
      Left = 8
      Top = 88
      Width = 177
      Height = 41
      Caption = 'Cadastrar'
      TabOrder = 1
      OnClick = btCadastrarClick
    end
    object cbSexo: TComboBox
      Left = 224
      Top = 41
      Width = 145
      Height = 21
      TabOrder = 2
      Items.Strings = (
        'Masculino'
        'Feminino')
    end
  end
end
