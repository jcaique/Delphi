object frmEventoBotao2: TfrmEventoBotao2
  Left = 0
  Top = 0
  Caption = 'Evento do Bot'#227'o'
  ClientHeight = 201
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 288
    Top = 72
    Width = 169
    Height = 18
  end
  object txtTexto: TEdit
    Left = 80
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = txtTextoChange
  end
  object btnAdicionar: TButton
    Left = 102
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAdicionarClick
  end
end
