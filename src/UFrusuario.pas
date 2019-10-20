unit UFrusuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxGroupBox, cxRadioGroup, cxDBEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxSpinEdit, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ComCtrls;

type
  TFrusuario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    TxtValorPesquisa: TcxTextEdit;
    BtnPesquisa: TcxButton;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    N: TLabel;
    lblcpfcnpj: TLabel;
    lblrgie: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    TxtNome: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    lcestado: TcxDBLookupComboBox;
    lccidade: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    QueCidades: TZQuery;
    QueEstados: TZQuery;
    QueTabela: TZQuery;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    cbPessoa: TcxDBRadioGroup;
    DataSource1: TDataSource;
    QueTabelacodigo: TIntegerField;
    QueTabelanome: TWideStringField;
    QueTabelacpf: TWideStringField;
    QueTabelarg: TWideStringField;
    QueTabelaendereco: TWideStringField;
    QueTabelanumero: TWideStringField;
    QueTabelabairro: TWideStringField;
    QueTabelacomplemento: TWideStringField;
    QueTabelacep: TWideStringField;
    QueTabelacodigo_cidade: TIntegerField;
    QueTabelanome_cidade: TWideStringField;
    QueTabelacodigo_uf: TIntegerField;
    QueTabelanome_uf: TWideStringField;
    QueTabelasexo: TWideStringField;
    QueTabelatelefone: TWideStringField;
    QueTabelatelefone_contato: TWideStringField;
    QueTabeladt_nascimento: TDateField;
    procedure FormShow(Sender: TObject);
    procedure lcestadoPropertiesEditValueChanged(Sender: TObject);
    procedure AtivaDesativaBotoes;
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frusuario: TFrusuario;

implementation

{$R *.dfm}
   uses uMed, dmSever;


   procedure TFrusuario.AtivaDesativaBotoes;
begin
  BtnIncluir.Enabled := not BtnIncluir.Enabled;
  BtnExcluir.Enabled := not BtnExcluir.Enabled;
  BtnAlterar.Enabled := not BtnAlterar.Enabled;
  BtnCancelar.Enabled := not BtnCancelar.Enabled;
  BtnGravar.Enabled := not BtnGravar.Enabled;
end;


procedure TFrusuario.BtnAlterarClick(Sender: TObject);
begin
if not QueTabela.fieldByName('codigo').IsNull then
  Begin
    AtivaDesativaBotoes;
    QueTabela.Edit;
    TxtNome.SetFocus;
  End
  else
  begin
    ShowMessage('Nenhum registro Selecionado para Edição');
  end;
end;

procedure TFrusuario.BtnCancelarClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueTabela.Cancel;
end;

procedure TFrusuario.BtnExcluirClick(Sender: TObject);
begin
if not QueTabela.fieldByName('codigo').IsNull then
  Begin
    QueTabela.Delete;
    ShowMessage('Cliente Excluido com Sucesso!');
  End
  else
  Begin
    ShowMessage('Nenhum Cliente Selecionado');
  End;
end;

procedure TFrusuario.BtnGravarClick(Sender: TObject);
begin
Try
    QueTabela.FieldByName('nome_cidade').AsString:= lccidade.Text;
    QueTabela.FieldByName('nome_uf').AsString := lcestado.Text;
    QueTabela.Post;
    AtivaDesativaBotoes;
    ShowMessage('Usuários Gravado com Sucesso!');
  except
    ShowMessage('Erro ao Gravar');
  End;
end;

procedure TFrusuario.BtnIncluirClick(Sender: TObject);
begin
  AtivaDesativaBotoes;
  QueTabela.Append;
  cbPessoa.ItemIndex := 0;
  TxtNome.SetFocus;
end;

procedure TFrusuario.BtnPesquisaClick(Sender: TObject);
begin
QueTabela.close;
  QueTabela.SQL.Clear;
  QueTabela.SQL.Add('Select * from tab_usuarios where nom like :pPesq');
  QueTabela.ParamByName('pPesq').AsString := '%' + TxtValorPesquisa.Text + '%';
  QueTabela.Open;
end;

procedure TFrusuario.DBGrid1DblClick(Sender: TObject);
begin
PageControl1.ActivePageIndex := 1;
end;

procedure TFrusuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree
end;

procedure TFrusuario.FormDestroy(Sender: TObject);
begin
 Frusuario := nil;
end;

procedure TFrusuario.FormShow(Sender: TObject);
begin
QueEstados.Active := True;
  QueCidades.Active := True;
  QueTabela.Open;
end;

procedure TFrusuario.lcestadoPropertiesEditValueChanged(Sender: TObject);
begin
 if BtnGravar.Enabled then
  begin
    if lcestado.Text <> '' then
    begin
      QueCidades.close;
      QueCidades.SQL.Clear;
      QueCidades.SQL.Add
        ('Select codigo_cidade,nome_cidade from cidades where sigla_estado = :pEst');
      QueCidades.ParamByName('pEst').AsString := trim(lcestado.Text);
      QueCidades.Open;

      QueCidades.Active := True;
    end;
  end;
end;

end.
