program KalServer;
{$APPTYPE CONSOLE}

uses
  Forms,
  Config in 'Config.pas' {Form1},
  Header in 'Header.pas',
  map in 'map.pas',
  npc in 'npc.pas',
  mob in 'mob.pas',
  exp in 'exp.pas',
  item in 'item.pas';

{$E .bin}

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end. 
