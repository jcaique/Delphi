library TesteDll;

uses
  System.SysUtils,
  VCL.Dialogs,
  System.Classes;

{$R *.res}

procedure MensagemConfirmacao(Mensagem: WideString);
begin
  ShowMessage(Mensagem);
end;

function MeuIntParaStr(NumeroInt: Integer): ShortString; safecall;
begin
  try
    Result := IntToStr(NumeroInt);

    MensagemConfirmacao('Convertido.');
  except
  end;
end;

function ParaMaiuscula(str: ShortString): ShortString; safecall;
begin
  try
    Result := AnsiUpperCase(str);
  except
  end;
end;

function ParaMinuscula(str: ShortString): ShortString; stdcall;
begin
  try
    Result := AnsiLowerCase(str);
  except
    //Em alguns casos da AV sen�o colocar em um try/except... Ver o por que isto ocorre.
  end;
end;

//Nesta se��o de exports, coloco todas as funcoes que pretente-se que utilizem externamente
//que s�o toddas com a implemental��o stdcall a frente
// DoSomethingABC name 'DoSomething' --> pode ser exportada com um nome diferente;
exports
  ParaMaiuscula,
  ParaMinuscula,
  MeuIntParaStr;

begin

end.
