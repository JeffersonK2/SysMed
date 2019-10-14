program SysMed;

uses
  Vcl.Forms,
  uMed in 'uMed.pas' {ulogin},
  UFrmenu in 'UFrmenu.pas' {Frmenu},
  UFragendamento in 'UFragendamento.pas' {Frmagendamento},
  uTeste in 'uTeste.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tulogin, ulogin);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
