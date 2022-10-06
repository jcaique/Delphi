unit model.UTeste;

interface

{$HINTS ON}
{$WARNINGS ON}

uses
  Data.DB, Data.Win.ADODB;

type
  IQuery = interface
    ['{FC57CDAC-B97D-4C6D-BF5B-E02EE0ACDCC5}']
    function SQL(ASQL: string): IQuery;
    function ParamByName(AParamName: string; AParamValue: Variant; AFieldType: TDataType): IQuery;
    function Open: IQuery;
    function Result: TDataSet;
  end;

  TQuery = class(TInterfacedObject, IQuery)
  strict private
    FDataSet: TADOQuery;

    const
      CONECTION = 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=FastReportApp;Data Source=JOSEPH2\MSSQLLOCALDB';
  public
    class function New: IQuery;
    function SQL(ASQL: string): IQuery;
    function ParamByName(AParamName: string; AParamValue: Variant; AFieldType: TDataType): IQuery;
    function Open: IQuery;
    function Result: TDataSet;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TQuery }

constructor TQuery.Create;
begin
  FDataSet := TADOQuery.Create(nil);
  FDataSet.ConnectionString := CONECTION;
end;

destructor TQuery.Destroy;
begin
  inherited;
  FDataSet.Destroy;
end;

class function TQuery.New: IQuery;
begin
  Result := Self.Create;
end;

function TQuery.Open: IQuery;
begin
  Result := Self;

  FDataSet.Open;
end;

function TQuery.ParamByName(AParamName: string; AParamValue: Variant; AFieldType: TDataType): IQuery;
begin
  Result := Self;

  FDataSet.Parameters.ParamByName(AParamName).DataType := AFieldType;
  FDataSet.Parameters.ParamByName(AParamName).Value := AParamValue;
end;

function TQuery.Result: TDataSet;
begin
  Result := Self.FDataSet;
end;

function TQuery.SQL(ASQL: string): IQuery;
begin
  Result := Self;

  FDataSet.SQL.Text := ASQL;
end;

end.

