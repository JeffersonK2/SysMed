program SysMed;

uses
  Vcl.Forms,
  uMed in 'uMed.pas' {ulogin},
  UFrmenu in 'UFrmenu.pas' {Frmenu},
  UFragendamento in 'UFragendamento.pas' {Frmagendamento},
  dmSever in 'dmSever.pas' {dmServer: TDataModule},
  UFroperador in 'UFroperador.pas' {Froperadores},
  UFrusuario in 'UFrusuario.pas' {Frusuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tulogin, ulogin);
  Application.CreateForm(TdmServer, dmServer);
  Application.Run;
end.
