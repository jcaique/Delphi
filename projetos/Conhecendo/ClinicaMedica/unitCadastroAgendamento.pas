unit unitCadastroAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroAgendamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Label4: TLabel;
    dbEdt_id: TDBEdit;
    da: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    dbCbxEspecialidades: TDBComboBox;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroAgendamentos: TfrmCadastroAgendamentos;

implementation

{$R *.dfm}

uses moduloDeDados;

end.
