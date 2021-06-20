unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg, unitCadastroPacientes, unitCadastroAgendamento;

type
  TfrmPrincipal = class(TForm)
    menu: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    btnAgendamentos: TBitBtn;
    btnPacientes: TBitBtn;
    logoTelaPrincipal: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure btnPacientesClick(Sender: TObject);
    procedure btnAgendamentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Agendamentos1Click(Sender: TObject);
begin
  frmCadastroAgendamentos.ShowModal;
end;

procedure TfrmPrincipal.btnAgendamentosClick(Sender: TObject);
begin
 frmCadastroAgendamentos.ShowModal;
end;

procedure TfrmPrincipal.btnPacientesClick(Sender: TObject);
begin
  frmCadastroPacientes.ShowModal;
end;

procedure TfrmPrincipal.Pacientes1Click(Sender: TObject);
begin
  frmCadastroPacientes.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
