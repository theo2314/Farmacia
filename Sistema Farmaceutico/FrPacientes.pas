unit FrPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TuFrPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    edNome: TEdit;
    Label3: TLabel;
    btCadastrar: TButton;
    edNascimento: TEdit;
    Label4: TLabel;
    cbSexo: TComboBox;
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uFrPacientes: TuFrPacientes;

implementation

{$R *.dfm}

uses DmPrincipal;

procedure TuFrPacientes.btCadastrarClick(Sender: TObject);
begin
  DmDB.qryPacientes.Open;
  DmDB.qryPacientes.Append;
  DmDB.qryPacientesnome.Value := edNome.Text;
  DmDB.qryPacientessexo.Value := cbSexo.Text;
  DmDB.qryPacientesdt_nascimento.Value := StrToDate(edNascimento.Text);
  DmDB.qryPacientes.Post;
end;

end.
