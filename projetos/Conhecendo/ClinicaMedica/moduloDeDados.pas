unit moduloDeDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tdm = class(TDataModule)
    conexaoBd: TFDConnection;
    tblPacientes: TFDTable;
    tblAgendamentos: TFDTable;
    dsAgendamentos: TDataSource;
    dsPacientes: TDataSource;
    tblPacientesid: TFDAutoIncField;
    tblPacientesnome: TStringField;
    tblPacientescelular: TStringField;
    tblPacientesdt_Cadastro: TDateField;
    tblPacientescpf: TStringField;
    tblAgendamentosid: TFDAutoIncField;
    tblAgendamentosid_paciente: TIntegerField;
    tblAgendamentosdt_agendamento: TDateField;
    tblAgendamentoshora: TStringField;
    tblAgendamentosespecialidade: TStringField;
    tblAgendamentosmedico: TStringField;
    procedure tblPacientesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure Tdm.tblPacientesAfterInsert(DataSet: TDataSet);
begin
  tblPacientesdt_Cadastro.Value := Date();
end;

end.
