object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Customer Register'
  ClientHeight = 458
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 774
    object Label1: TLabel
      Left = 65
      Top = 16
      Width = 272
      Height = 35
      Caption = 'Customer Register'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 442
      Top = 20
      Width = 57
      Height = 43
      Caption = 'New'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 505
      Top = 20
      Width = 57
      Height = 43
      Caption = 'Save'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 631
      Top = 20
      Width = 57
      Height = 43
      Caption = 'Delete'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 568
      Top = 20
      Width = 57
      Height = 43
      Caption = 'Cancel'
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 81
    Width = 748
    Height = 377
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 774
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      ExplicitLeft = 0
      ExplicitWidth = 699
      object Label2: TLabel
        Left = 32
        Top = 16
        Width = 59
        Height = 13
        Caption = 'C'#243'd. Cliente'
      end
      object Label3: TLabel
        Left = 32
        Top = 80
        Width = 63
        Height = 13
        Caption = 'Nome Cliente'
      end
      object Label4: TLabel
        Left = 200
        Top = 16
        Width = 71
        Height = 13
        Caption = 'Tipo de Cliente'
      end
      object Label5: TLabel
        Left = 392
        Top = 16
        Width = 14
        Height = 13
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 544
        Top = 16
        Width = 75
        Height = 13
        Caption = 'Data Expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 32
        Top = 144
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label8: TLabel
        Left = 32
        Top = 205
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label9: TLabel
        Left = 224
        Top = 205
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label10: TLabel
        Left = 32
        Top = 264
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label11: TLabel
        Left = 224
        Top = 264
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label12: TLabel
        Left = 392
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label13: TLabel
        Left = 544
        Top = 80
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object Label14: TLabel
        Left = 392
        Top = 144
        Width = 24
        Height = 13
        Caption = 'Email'
      end
      object Edit1: TEdit
        Left = 32
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 32
        Top = 99
        Width = 313
        Height = 21
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 200
        Top = 35
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'PF'
          'PJ')
      end
      object Edit3: TEdit
        Left = 392
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 544
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 32
        Top = 163
        Width = 313
        Height = 21
        TabOrder = 5
      end
      object Edit6: TEdit
        Left = 32
        Top = 224
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object Edit7: TEdit
        Left = 224
        Top = 224
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object Edit8: TEdit
        Left = 32
        Top = 283
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object Edit9: TEdit
        Left = 224
        Top = 283
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object Edit10: TEdit
        Left = 392
        Top = 99
        Width = 121
        Height = 21
        TabOrder = 10
      end
      object Edit11: TEdit
        Left = 544
        Top = 99
        Width = 121
        Height = 21
        TabOrder = 11
      end
      object Edit12: TEdit
        Left = 392
        Top = 163
        Width = 273
        Height = 21
        TabOrder = 12
      end
      object CheckBox1: TCheckBox
        Left = 398
        Top = 224
        Width = 75
        Height = 17
        Caption = 'Negativado'
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cados do C'#244'njuge'
      ImageIndex = 1
      ExplicitLeft = 8
      object Label15: TLabel
        Left = 20
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Nome C'#244'njuge'
      end
      object Label16: TLabel
        Left = 293
        Top = 16
        Width = 62
        Height = 13
        Caption = 'CPF C'#244'njuge'
      end
      object Label17: TLabel
        Left = 20
        Top = 88
        Width = 118
        Height = 13
        Caption = 'Data nacimento C'#244'njuge'
      end
      object Edit13: TEdit
        Left = 20
        Top = 35
        Width = 165
        Height = 21
        TabOrder = 0
      end
      object Edit14: TEdit
        Left = 293
        Top = 35
        Width = 165
        Height = 21
        TabOrder = 1
      end
      object Edit15: TEdit
        Left = 20
        Top = 107
        Width = 165
        Height = 21
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 293
        Top = 73
        Width = 391
        Height = 136
        Caption = 'Contato'
        TabOrder = 3
        object Label18: TLabel
          Left = 19
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Celular'
        end
        object Label19: TLabel
          Left = 19
          Top = 77
          Width = 24
          Height = 13
          Caption = 'Email'
        end
        object Label20: TLabel
          Left = 211
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Celular'
        end
        object Edit16: TEdit
          Left = 19
          Top = 43
          Width = 134
          Height = 21
          TabOrder = 0
        end
        object Edit17: TEdit
          Left = 19
          Top = 96
          Width = 222
          Height = 21
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 214
          Top = 43
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'Claro'
            'Oi'
            'Vivo')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
      ExplicitLeft = 8
      object Label21: TLabel
        Left = 24
        Top = 21
        Width = 44
        Height = 13
        Caption = 'Profiss'#227'o'
      end
      object Label22: TLabel
        Left = 24
        Top = 85
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label23: TLabel
        Left = 24
        Top = 157
        Width = 142
        Height = 13
        Caption = 'Endere'#231'o completo - Empresa'
      end
      object Label24: TLabel
        Left = 24
        Top = 229
        Width = 44
        Height = 13
        Caption = 'Profiss'#227'o'
      end
      object Edit18: TEdit
        Left = 24
        Top = 40
        Width = 297
        Height = 21
        TabOrder = 0
      end
      object Edit19: TEdit
        Left = 24
        Top = 104
        Width = 297
        Height = 21
        TabOrder = 1
      end
      object Edit20: TEdit
        Left = 24
        Top = 176
        Width = 297
        Height = 21
        TabOrder = 2
      end
      object Edit21: TEdit
        Left = 24
        Top = 248
        Width = 142
        Height = 21
        TabOrder = 3
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 3
      ExplicitWidth = 766
    end
  end
end
