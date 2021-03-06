unit FrAtendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TuFrAtendimentos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    edData: TEdit;
    lcFarmaceutico: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    lcPaciente: TDBLookupComboBox;
    DSServicos: TDataSource;
    lbLista: TCheckListBox;
    Label4: TLabel;
    Label5: TLabel;
    memoObs: TMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DSPaciente: TDataSource;
    DSFarmaceutico: TDataSource;
    DSatendimento: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure limpaEdits;
  public
    { Public declarations }
  end;

var
  uFrAtendimentos: TuFrAtendimentos;

implementation

{$R *.dfm}

uses DmPrincipal, StrUtils, Types, FireDAC.Stan.Util;

procedure TuFrAtendimentos.DBGrid1CellClick(Column: TColumn);
begin
  edData.Text := DBGrid1.Fields[0].AsString;
end;

procedure TuFrAtendimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDB.qryServicos.Close;
  DmDB.qryPacientes.Close;
  DmDB.qryFarmaceuticos.Close;
  DmDB.qryAtendimentos.Close;
end;

procedure TuFrAtendimentos.FormCreate(Sender: TObject);
begin
  DmDB.qryServicos.Open;
  DmDB.qryServicos.First;
  while not DmDB.qryServicos.Eof do
  begin
    lbLista.Items.Add(DmDB.qryServicostipo.AsString);
    DmDB.qryServicos.Next;
  end;

  DmDB.qryPacientes.Open;
  DmDB.qryFarmaceuticos.Open;
  DmDB.qryAtendimentos.Open;
end;

procedure TuFrAtendimentos.FormShow(Sender: TObject);
begin
  DmDB.qryServicos.Open;
  DmDB.qryServicos.First;
  while not DmDB.qryServicos.Eof do
  begin
    lbLista.Items.Add(DmDB.qryServicostipo.AsString);
    DmDB.qryServicos.Next;
  end;

  DmDB.qryPacientes.Open;
  DmDB.qryFarmaceuticos.Open;
  DmDB.qryAtendimentos.Open;
end;

procedure TuFrAtendimentos.limpaEdits;
var
  i: integer;
begin
  edData.Clear;
  memoObs.Clear;
  lcFarmaceutico.KeyValue := Null;
  lcPaciente.KeyValue := Null;

  for i := 0 to lbLista.Count - 1 do
  begin
    if lbLista.Checked[i] then
    begin
      lbLista.Checked[i] := False;
    end;
  end;
end;

procedure TuFrAtendimentos.SpeedButton1Click(Sender: TObject);
var
  i: integer;
  valor: Double;
  sql, nome_lista: String;
  qry: TFDQuery;
begin
  DmDB.qryAtendimentos.Open;
  DmDB.qryAtendimentos.Append;
  DmDB.qryAtendimentosdt.Value := StrToDate(edData.Text);
  DmDB.qryAtendimentosnm_farmaceutico.Value := lcFarmaceutico.Text;
  DmDB.qryAtendimentosnm_paciente.Value := lcPaciente.Text;

  qry := TFDQuery.Create(nil);
  valor := 0;
  try
    qry.Connection := DmDB.Conexao;

    for i := 0 to lbLista.Count - 1 do
    begin
      if lbLista.Checked[i] then
      begin
        nome_lista := lbLista.Items[i];
        qry.sql.Clear;
        qry.sql.Add('select valor from servicos where tipo = "' +
          nome_lista + '"');
        qry.Open;
        valor := qry.FieldByName('valor').Value;

        DmDB.qryAtendimentosnm_lista.Value := DmDB.qryAtendimentosnm_lista.Value
          + nome_lista + ',';
        DmDB.qryAtendimentosvalor.Value :=
          DmDB.qryAtendimentosvalor.Value + valor;
      end;
    end;
  finally
    qry.Free;
  end;
  DmDB.qryAtendimentosobs.Value := memoObs.Text;

  DmDB.qryAtendimentos.Post;

  limpaEdits;
end;

procedure TuFrAtendimentos.SpeedButton2Click(Sender: TObject);
var
  sql: String;
begin
  DmDB.qryAtendimentos.Edit;
  DmDB.qryAtendimentos.FieldByName('dt').Value :=  StrToDate(edData.Text);
  DmDB.qryAtendimentos.Post;

  limpaEdits;
end;

procedure TuFrAtendimentos.SpeedButton3Click(Sender: TObject);
begin
  if lcPaciente.Text <> '' then
    DmDB.qryAtendimentos.Locate('nm_paciente', lcPaciente.Text,
      [loCaseInsensitive, loPartialKey]);

  if lcFarmaceutico.Text <> '' then
    DmDB.qryAtendimentos.Locate('nm_farmaceutico', lcFarmaceutico.Text,
      [loCaseInsensitive, loPartialKey]);

  limpaEdits;
end;

procedure TuFrAtendimentos.SpeedButton4Click(Sender: TObject);
begin
  DmDB.qryAtendimentos.ExecSQL('Delete from atendimento where cd = ' +
    DmDB.qryAtendimentoscd.AsString + ';');
end;

end.
