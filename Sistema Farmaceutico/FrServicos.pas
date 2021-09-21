unit FrServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TuFrServicos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    cbTipo: TComboBox;
    Label3: TLabel;
    edDescricao: TEdit;
    Label4: TLabel;
    edValor: TEdit;
    btCadastrar: TButton;
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpaEdits;
  public
    { Public declarations }
  end;

var
  uFrServicos: TuFrServicos;

implementation

{$R *.dfm}

uses DmPrincipal;

procedure TuFrServicos.btCadastrarClick(Sender: TObject);
begin
  DmDB.qryServicos.Open;
  DmDB.qryServicos.Append;
  DmDB.qryServicostipo.Value := cbTipo.Text;
  DmDB.qryServicosdescricao.Value := edDescricao.Text;
  DmDB.qryServicosvalor.Value := StrToCurr(edValor.Text);
  DmDB.qryServicos.Post;

  limpaEdits;
end;

procedure TuFrServicos.limpaEdits;
begin
   edDescricao.Clear;
   edValor.Clear;
end;

end.
