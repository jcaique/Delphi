program TObjectList;

uses
  System.Generics.Collections;

type
  TNewObject = class(Toobject)
  private
    FName: string;
  public
    constructor Create(const AName: string);
    destructor Destroy(); Override;

  End;

constructor TNewObject.Create(const AName: string);
begin
  FName := AName;
end;

destructor TNewObject.Destroy;
begin
  writeln('Object " ' + FName + '" was destroyed!');
end;

var
  ListOfObject: TObjectList<TNewObjectList>;
  { Informando o tipo de dado, que � uma lista de
    objetos. Entre <> � declarado ao compilador de qual
    objeto ser� formado esta lista }
  Obj: TNewObject;

  // criando uma variavel do tipo objeto desejado
begin
  ListOfObject := TObjectList<TNewObjectList>.Create();
  // Instanciando a classe TnewObject para uma lista

  ListOfObject.Add(TNewObjectList.Create('One'));
  ListOfObject.Add(TNewObjectList.Create('Two'));
  // Adicionando alguns itens diretamente lista

  Obj := TNewObjectList.Create('Three');
  ListOfObject.Add(Obj);
  // criando um objeto e posteriormente adicionando � lista

  ListOfObject.Delete(0);
  ListOfObject.Extract(Obj);
  //removendo um item da lista, nesta chamada, o destructor � chamado internamente

  List.Free;
  //Destruindo a lista completamente


  readln;

end.
