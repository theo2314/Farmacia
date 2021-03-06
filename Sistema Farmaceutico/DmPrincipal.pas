unit DmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDmDB = class(TDataModule)
    Conexao: TFDConnection;
    qryFarmaceuticos: TFDQuery;
    qryFarmaceuticoscd: TFDAutoIncField;
    qryFarmaceuticosnome: TStringField;
    qryFarmaceuticossexo: TStringField;
    qryServicos: TFDQuery;
    qryServicoscd: TFDAutoIncField;
    qryServicostipo: TStringField;
    qryServicosdescricao: TStringField;
    qryServicosvalor: TBCDField;
    qryPacientes: TFDQuery;
    qryPacientescd: TFDAutoIncField;
    qryPacientesnome: TStringField;
    qryPacientessexo: TStringField;
    qryPacientesdt_nascimento: TDateField;
    qryAtendimentos: TFDQuery;
    qryAtendimentoscd: TFDAutoIncField;
    qryAtendimentosdt: TDateField;
    qryAtendimentosobs: TStringField;
    qryAtendimentosvalor: TBCDField;
    qryAuxiliar: TFDQuery;
    qryAtendimentosnm_farmaceutico: TStringField;
    qryAtendimentosnm_paciente: TStringField;
    qryAtendimentosnm_lista: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDB: TDmDB;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
