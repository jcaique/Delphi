unit unitDM_Banco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM_Banco = class(TDataModule)
    Conexao: TFDConnection;
    dsContatos: TDataSource;
    tbContatos: TFDTable;
    tbContatosid: TFDAutoIncField;
    tbContatosnome: TStringField;
    tbContatoscelular: TStringField;
    tbContatosestaBloqueado: TBooleanField;
    tbContatosdata: TDateTimeField;
    tbContatosdescricao: TMemoField;
    procedure tbContatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Banco: TDM_Banco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM_Banco.tbContatosAfterInsert(DataSet: TDataSet);
begin
     tbContatosDATA.Value := Now();
end;

end.
