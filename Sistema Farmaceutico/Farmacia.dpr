program Farmacia;

uses
  Vcl.Forms,
  FrPrincipal in 'FrPrincipal.pas' {Form1},
  FrFarmaceuticos in 'FrFarmaceuticos.pas' {uFrFarmaceuticos},
  FrPacientes in 'FrPacientes.pas' {uFrPacientes},
  FrServicos in 'FrServicos.pas' {uFrServicos},
  FrAtendimentos in 'FrAtendimentos.pas' {uFrAtendimentos},
  DmPrincipal in 'DmPrincipal.pas' {DmDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDmDB, DmDB);
  Application.Run;
end.
