unit unitCadastroPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadastroPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbEdt_id: TDBEdit;
    dbEdt_Nome: TDBEdit;
    dbEdt_cpf: TDBEdit;
    dbEdt_celular: TDBEdit;
    dbEdit_dtCadastro: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dgGrindPacientes: TDBGrid;
    DBNavigator1: TDBNavigator;
    edtBuscarPacientes: TEdit;
    Label7: TLabel;
    procedure edtBuscarPacientesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPacientes: TfrmCadastroPacientes;

implementation

{$R *.dfm}

uses moduloDeDados;

procedure TfrmCadastroPacientes.edtBuscarPacientesChange(Sender: TObject);
begin
  dm.tblPacientes.Locate('nome', edtBuscarPacientes.Text, [loPartialKey]);
end;

end.
