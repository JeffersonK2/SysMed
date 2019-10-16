unit uFrFuncoes;

interface

uses SysUtils, IniFiles, Windows, StdCtrls, Vcl.Dialogs,
     Menus, pngimage, Classes;

function LerINI(sArqIni, sSessao, sAtrib: String): String;
function DesCriptografa(texto:string;chave:integer):String;
Function Criptografa(texto:string;chave:integer):String;
function AsciiToInt(Caracter: Char): Integer;
function EnterTab: boolean;


implementation

var
keyTab: TKeyboardState;

function LerINI(sArqIni, sSessao, sAtrib: String): String;
var iniBD: TIniFile;
    sVlr : String;
begin
  try
    iniBD  := TIniFile.Create(sArqIni);
    sVlr   := iniBD.ReadString(sSessao, sAtrib,'');
    iniBD.Free;
    Result := sVlr;
  except
    on E: Exception do
      Result := 'Erro ao Conectar '+ E.Message;
  end;
end;

Function DesCriptografa(texto:string;chave:integer):String;
var
  cont:integer;
  retorno:string;
begin
  if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])-chave);
    end;
    result:=retorno;
  end;
end;

function AsciiToInt(Caracter: Char): Integer;
var
  i: Integer;
begin
  i := 32;
  while i < 255 do begin
    if Chr(i) = Caracter then
      Break;
    i := i + 1;
  end;
  Result := i;
end;

Function Criptografa(texto:string;chave:integer):String;
var
  cont:integer;
  retorno:string;
begin
  if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])+chave);
    end;
    result:=retorno;
  end;
end;

function EnterTab: boolean;
begin
  GetKeyboardState(keyTab);
  Result := ((keyTab[13] in [128,129]) or (keyTab[09] in [128,129])) and
            (keyTab[16] in [0,1]);
end;

end.
