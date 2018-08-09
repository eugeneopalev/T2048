program T2048;

uses
  Forms,
  Main in 'Main.pas' {FormMain},
  Game in 'Game.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'T2048';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
