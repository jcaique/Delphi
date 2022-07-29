unit ScreenBookStore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TscreenRegister = class(TForm)
    formTitle: TLabel;
    lblTitle: TLabel;
    txtTitle: TEdit;
    lblAuthor: TLabel;
    txtAuthor: TEdit;
    lblGender: TLabel;
    comboBoxGender: TComboBox;
    lblLanguage: TLabel;
    rdPortuguese: TRadioButton;
    rdEnglish: TRadioButton;
    rdSpanish: TRadioButton;
    isAvailable: TCheckBox;
    lblResume: TLabel;
    Resume: TMemo;
    lblWhereBuy: TLabel;
    CheckBox1: TCheckBox;
    checkBoxStore: TCheckBox;
    btnSave: TButton;
    btnDelete: TButton;
    btnFind: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  screenRegister: TscreenRegister;

implementation

{$R *.dfm}
end.
