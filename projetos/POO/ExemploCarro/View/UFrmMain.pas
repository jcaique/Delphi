unit UFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, UCarro, UAviao, UMeioTransporte;

type
  TFrmMain = class(TForm)
    gbCarro: TGroupBox;
    gbAviao: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    edDescricaoCarro: TEdit;
    edDescAviao: TEdit;
    edCapacidadeAviao: TEdit;
    edCapacidadeCarro: TEdit;
    edKmCarro: TEdit;
    edKmAviao: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  {
    *Comentadas as declar���es para ser poss�vel fazer o TypeCasting, declarando as duas como
    do tipo de sua classe m�e.
    *A parte ruim disto � que, como est� sendo criada a partir da classe m�e, e o
    m�todo na classe mae n�o tem implemenmta��o, a acao deles n�o vai funcionar, pois
    estou me referenciando ao m�todo da classe m�e, que � est�tico (por default).
    *Para resolver esta quest�o, devemos declar�-lo como VIRTUAL, o que significa que
    pode ser sobrescrito, assim, se tornar� um m�todo polif�rmico (pode obter v�rias formas)
  }
//    Aviao: TAviao;
//    Carro: TCarro;
    Aviao, Carro: TMeioTransporte;
  end;
var
  FrmMain: TFrmMain;


implementation



{$R *.dfm}

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  Aviao := TAviao.Create;

  Aviao.Descricao := edDescAviao.Text;
  Aviao.Capacidade := StrToIntDef(edCapacidadeAviao.Text, 0);
  TAviao(Aviao).HorasVoo := StrToIntDef(edKmAviao.Text, 0); //acessando o m�todo de TAviao (poss�vel por conta do VIRTUAL)
end;

procedure TFrmMain.Button2Click(Sender: TObject);
begin
  FreeAndNil(Aviao);
end;

procedure TFrmMain.Button3Click(Sender: TObject);
begin
  Carro := TCarro.Create;

  Carro.Descricao := edDescricaoCarro.Text;
  Carro.Capacidade := StrToIntDef(edCapacidadeCarro.Text, 0);
  TCarro(Carro).Quilometragem := StrToIntDef(edKmCarro.Text, 0); //Fazendo o TypeCasting
end;

procedure TFrmMain.Button4Click(Sender: TObject);
begin
  FreeAndNil(Carro);
end;

procedure TFrmMain.Button5Click(Sender: TObject);
begin
  Carro.Mover;
end;

procedure TFrmMain.Button6Click(Sender: TObject);
begin
  Aviao.Mover;
end;

end.

