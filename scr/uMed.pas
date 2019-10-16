unit uMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  ZAbstractConnection, ZConnection, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.Buttons, UFrmenu;

type
  Tulogin = class(TForm)
    lblogin: TcxLabel;
    QueOperador: TZQuery;
    txtlogin: TcxTextEdit;
    cxLabel1: TcxLabel;
    edSenha: TEdit;
    Image1: TImage;
    btnAcessar: TBitBtn;

    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAcessarClick(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ulogin: Tulogin;

implementation

{$R *.dfm}

uses dmSever;


procedure Tulogin.btnAcessarClick(Sender: TObject);
var
  senha, operador: String;
begin
  QueOperador.Close;
  QueOperador.SQL.Clear;
  QueOperador.SQL.Add
    ('select nome_operador, senha_operador from tab_operador where login_operador = :pPesq');
  QueOperador.ParamByName('pPesq').AsString := txtlogin.Text;
  QueOperador.Open;

  if QueOperador.RecordCount > 0 then
  begin
    senha := edSenha.Text;
    if (senha.Equals(QueOperador.FieldByName('senha_operador').AsString)) then
    Begin

      if Frmenu = nil then
      Begin
        Application.CreateForm(TFrmenu, Frmenu);
      End;

      Frmenu.show;
      ulogin.Enabled:=False;
      //Close;
    End
    else
    Begin
      ShowMessage('Operador ou Senha Incorretos!');
      txtlogin.SetFocus;
    end;
  end
  else
  Begin
    ShowMessage('Operador ou Senha Incorretos!');
    txtlogin.SetFocus;
  end;

end;

procedure Tulogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin  //se for, passa o foco para o pr�ximo campo, zerando o valor da vari�vel Key
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
    end;
end;

procedure Tulogin.SpeedButton1Click(Sender: TObject);
var
  senha, operador: String;
begin
  QueOperador.Close;
  QueOperador.SQL.Clear;
  QueOperador.SQL.Add
    ('select nome_operador, senha_operador from tab_operador where login_operador = :pPesq');
  QueOperador.ParamByName('pPesq').AsString := txtlogin.Text;
  QueOperador.Open;

  if QueOperador.RecordCount > 0 then
  begin
    senha := edSenha.Text;
    if (senha.Equals(QueOperador.FieldByName('senha_operador').AsString)) then
    Begin

      if Frmenu = nil then
      Begin
        Application.CreateForm(TFrmenu, Frmenu);
      End;

      Frmenu.show;
      ulogin.Enabled:=False;
      //Close;
    End
    else
    Begin
      ShowMessage('Operador ou Senha Incorretos!');
    end;
  end
  else
  Begin
    ShowMessage('Operador ou Senha Incorretos!');
  end;
end;



end.
