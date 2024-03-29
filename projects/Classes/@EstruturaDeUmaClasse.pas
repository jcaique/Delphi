﻿unit EstruturaDeUmaCLasse;

interface

uses Sys.Utils;

{
  mesma coisa de TUsuario = class(Tobject) onde o que está em parenteses é a classe herdada
  type nome_da_classe = class
}
type
  TUmaClasse = class(Tobject)

  private
    // declarações privadas (atributos e/ou metodos) - Somente lido pela própria classe não podendo ser acessada por outras.

  protected
    // declarções protegidas (atributos e/ou metodos) - Pondendo ser lida na hora que for herdada, além de uma private poder acessa-la.

  public
    // ...públicas (atributos e/ou metodos) - Pode ser acessada por qualquer outra classe.

  published
    // ...published - Quase a mesma coisa que a public tem uma função especial de poder ser lida via RTTI

  end; // fim das declarações métodos/atributos

implementation // Implementação dos métodos da classe

uses Sys.Utils;

initialization

// opcional: o que for delcarado aqui, será executado no início do programa principal

finalization

// opcional: usado para liberar espaço do que foi delcarado em intitialization

end.

{
  fonte: https://www.devmedia.com.br/criando-uma-classe-delphi/23517
  http://docwiki.embarcadero.com/RADStudio/Sydney/en/Programs_and_Units_(Delphi)
}
