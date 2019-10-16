program SysMed;

uses
  Vcl.Forms,
  uMed in 'uMed.pas' {ulogin},
  UFrmenu in 'UFrmenu.pas' {Frmenu},
  UFragendamento in 'UFragendamento.pas' {Frmagendamento},
  dmSever in 'dmSever.pas' {dmServer: TDataModule},
  uFrFuncoes in 'uFrFuncoes.pas';
  UFroperador in 'UFroperador.pas' {Froperadores},
  UFrusuario in 'UFrusuario.pas' {Frusuario};
  
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmServer, dmServer);
  Application.CreateForm(Tulogin, ulogin);
  Application.Run;
end.
