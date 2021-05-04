unit classeFuncionario;

interface

type
  TFuncionario = class(Tobject)

  private
    FNome: String;
    FIdade: Integer;
    FSalario: Double;

  public
    function getNome: String;
    function getIdade: Integer;
    function getSalario: Double;
    procedure setNome(nome: String);
    procedure setIdade(idade: Integer);
    procedure setSalario(salario: Double);

    // implementar properties (pegar mais o macete de properties ainda)c
    property PNome: String read FNome write FNome;
    property PIdade: Integer read FIdade write FIdade;
    property PSalario: Double read FSalario write FSalario;
  end;

implementation

function TFuncionario.getNome(): String;
begin
  Result := FNome;
end;

function TFuncionario.getIdade(): Integer;
begin
  Result := FIdade;
end;

function TFuncionario.getSalario(): Double;
begin
  Result := FSalario;
end;

procedure TFuncionario.setNome(nome: String);
begin
  FNome := nome;
end;

procedure TFuncionario.setIdade(idade: Integer);
begin
  FIdade := idade;
end;

procedure TFuncionario.setSalario(salario: Double);
begin
  FSalario := salario;
end;

end.