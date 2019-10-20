program SysMed;

uses
  Vcl.Forms,
  uMed in 'uMed.pas' {ulogin},
  UFrmenu in 'UFrmenu.pas' {Frmenu},
  UFragendamento in 'UFragendamento.pas' {Frmagendamento},
  uFrFuncoes in 'uFrFuncoes.pas',
  UFroperador in 'UFroperador.pas' {Froperadores},
  UFrusuario in 'UFrusuario.pas' {Frusuario},
  dmSever in 'dmSever.pas' {dmServer: TDataModule},
  ufrPadrao in 'ufrPadrao.pas' {frmPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmServer, dmServer);
  Application.CreateForm(Tulogin, ulogin);
  Application.CreateForm(TFroperadores, Froperadores);
  Application.CreateForm(TFrusuario, Frusuario);
  Application.Run;
end.
