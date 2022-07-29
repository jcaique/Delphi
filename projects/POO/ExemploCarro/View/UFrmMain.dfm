object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Heran'#231'a/Classes/Objetos/Poliformismo'
  ClientHeight = 218
  ClientWidth = 560
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gbCarro: TGroupBox
    Left = 0
    Top = 102
    Width = 560
    Height = 116
    Align = alBottom
    Caption = ' Carro'
    TabOrder = 0
    object Label4: TLabel
      Left = 3
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label5: TLabel
      Left = 136
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Capacidade'
    end
    object Label6: TLabel
      Left = 263
      Top = 24
      Width = 14
      Height = 13
      Caption = 'KM'
    end
    object Button3: TButton
      Left = 9
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 464
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Liberar'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 136
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Mover'
      TabOrder = 2
      OnClick = Button5Click
    end
    object edDescricaoCarro: TEdit
      Left = 9
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edDescricaoCarro'
    end
    object edCapacidadeCarro: TEdit
      Left = 136
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edCapacidadeCarro'
    end
    object edKmCarro: TEdit
      Left = 263
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edKmCarro'
    end
  end
  object gbAviao: TGroupBox
    Left = 0
    Top = 0
    Width = 560
    Height = 101
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' Avi'#227'o '
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 136
      Top = 18
      Width = 56
      Height = 13
      Caption = 'Capacidade'
    end
    object Label3: TLabel
      Left = 263
      Top = 18
      Width = 14
      Height = 13
      Caption = 'KM'
    end
    object Button1: TButton
      Left = 9
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 464
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Liberar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button6: TButton
      Left = 136
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Voar'
      TabOrder = 2
      OnClick = Button6Click
    end
    object edDescAviao: TEdit
      Left = 9
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edDescAviao'
    end
    object edCapacidadeAviao: TEdit
      Left = 136
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'edCapacidadeAviao'
    end
    object edKmAviao: TEdit
      Left = 263
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'edKmAviao'
    end
  end
end
