unit dmSever;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection,
  Vcl.Forms, Winapi.Windows, Winapi.Messages, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TdmServer = class(TDataModule)
    conexao: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmServer: TdmServer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFrFuncoes;

{$R *.dfm}

procedure TdmServer.DataModuleCreate(Sender: TObject);
var
s, sNomBco, sBcoDad, sIPSrv,sCamRel,sCamDll,
sUsuBco, sSenBco, sPorBco, sPortaExe: String;
begin
  try  //extrai as informações do aquivo INI e configura a conexão
    conexao.Connected  := False;
    conexao.Protocol   := '';

    sNomBco   := LerINI(ExtractFilePath(Application.ExeName)+'\SysMed.ini','SysMed','NomBco');
    sBcoDad   := LerINI(ExtractFilePath(Application.ExeName)+'\SysMed.ini','SysMed','BcoDad');
    sIPSrv    := LerINI(ExtractFilePath(Application.ExeName)+'\SysMed.ini','SysMed','IPSrv');
    sUsuBco   := LerINI(ExtractFilePath(Application.ExeName)+'\SysMed.ini','SysMed','UsuBco');
    sSenBco   := LerINI(ExtractFilePath(Application.ExeName)+'\SysMed.ini','SysMed','SenBco');
    sPorBco   := LerINI(ExtractFilePath(Application.ExeName)+'\SysMed.ini','SysMed','PorBco');

    case StrToInt(sBcoDad) of
      0: sBcoDad := 'firebird';
      1: sBcoDad := 'postgresql';
    end;

    sUsuBco := DesCriptografa(sUsuBco,10);
    sSenBco := DesCriptografa(sSenBco,10);

    conexao.Protocol  := sBcoDad;
    conexao.Database  := sNomBco;
    conexao.HostName  := sIPSrv;
    conexao.Port      := strtoint(sPorBco);
    conexao.User      := sUsuBco;
    conexao.Password  := sSenBco;
    conexao.Connected := true;
  except
    on E: Exception do
      begin
        ShowMessage('Configurações de conexão com o banco incorretas.'#13#10 + e.Message);
        Application.Terminate;
      end;
  end;
end;

end.
