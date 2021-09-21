unit FrFarmaceuticos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TuFrFarmaceuticos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TEdit;
    btCadastrar: TButton;
    Label3: TLabel;
    cbSexo: TComboBox;
    procedure btCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpaEdits;
  public
    { Public declarations }
  end;

var
  uFrFarmaceuticos: TuFrFarmaceuticos;

implementation

{$R *.dfm}

uses DmPrincipal;

procedure TuFrFarmaceuticos.btCadastrarClick(Sender: TObject);
begin
  DmDB.qryFarmaceuticos.Open;
  DmDB.qryFarmaceuticos.Append;
  DmDB.qryFarmaceuticosnome.Value := edNome.Text;
  DmDB.qryFarmaceuticossexo.Value := cbSexo.Text;
  DmDB.qryFarmaceuticos.Post;

  limpaEdits;
end;

procedure TuFrFarmaceuticos.limpaEdits;
begin
  edNome.Clear;
  cbSexo.Clear;
end;

end.
