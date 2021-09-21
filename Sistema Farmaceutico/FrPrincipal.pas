unit FrPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    CadastroPaciente1: TMenuItem;
    CadastroFarmaceutico1: TMenuItem;
    CadastroServios1: TMenuItem;
    Atendimentos1: TMenuItem;
    AC: TActionList;
    AcPaciente: TAction;
    AcFarmaceutico: TAction;
    AcServicos: TAction;
    AcAtendimentos: TAction;
    procedure AcPacienteExecute(Sender: TObject);
    procedure AcFarmaceuticoExecute(Sender: TObject);
    procedure AcServicosExecute(Sender: TObject);
    procedure AcAtendimentosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses FrAtendimentos, FrFarmaceuticos, FrPacientes, FrServicos;

procedure TForm1.AcAtendimentosExecute(Sender: TObject);
begin
  if not Assigned(uFrAtendimentos) then
    uFrAtendimentos := TuFrAtendimentos.Create(Self);

  uFrAtendimentos.Show;
end;

procedure TForm1.AcFarmaceuticoExecute(Sender: TObject);
begin
  if not Assigned(uFrFarmaceuticos) then
     uFrFarmaceuticos := TuFrFarmaceuticos.Create(Self);

  uFrFarmaceuticos.Show;
end;

procedure TForm1.AcPacienteExecute(Sender: TObject);
begin
   if not Assigned(uFrPacientes) then
     uFrPacientes := TuFrPacientes.Create(Self);

  uFrPacientes.Show;
end;

procedure TForm1.AcServicosExecute(Sender: TObject);
begin
  if not Assigned(uFrServicos) then
     uFrServicos := TuFrServicos.Create(Self);

  uFrServicos.Show;
end;

end.
