program SysMed;

uses
  Vcl.Forms,
  uMed in 'uMed.pas' {ulogin},
  UFrmenu in 'UFrmenu.pas' {Frmenu},
  UFragendamento in 'UFragendamento.pas' {Frmagendamento},
  dmSever in 'dmSever.pas' {dmServer: TDataModule},
<<<<<<< HEAD
  uFrFuncoes in 'uFrFuncoes.pas';
=======
  UFroperador in 'UFroperador.pas' {Froperadores},
  UFrusuario in 'UFrusuario.pas' {Frusuario};
>>>>>>> d102f361a1538685d17cef86aea239a5c6d42129

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmServer, dmServer);
  Application.CreateForm(Tulogin, ulogin);
  Application.Run;
end.
