program SysMed;

uses
  Vcl.Forms,
  uMed in 'uMed.pas' {ulogin},
  UFrmenu in 'UFrmenu.pas' {Frmenu},
  UFragendamento in 'UFragendamento.pas' {Frmagendamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tulogin, ulogin);
  Application.Run;
end.
