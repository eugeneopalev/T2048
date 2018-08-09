unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus, ActnList, Game;

type
  TFormMain = class(TForm)
    Tile1: TPanel;
    Tile2: TPanel;
    Tile3: TPanel;
    Tile4: TPanel;
    Tile5: TPanel;
    Tile6: TPanel;
    Tile7: TPanel;
    Tile8: TPanel;
    Tile9: TPanel;
    Tile10: TPanel;
    Tile11: TPanel;
    Tile12: TPanel;
    Tile13: TPanel;
    Tile14: TPanel;
    Tile15: TPanel;
    Tile16: TPanel;
    MainMenu: TMainMenu;
    MenuItemGame: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    StatusBar: TStatusBar;
    MenuItemReset: TMenuItem;
    MenuItemExit: TMenuItem;
    ActionList: TActionList;
    ActionAbout: TAction;
    ActionExit: TAction;
    ActionReset: TAction;
    MenuItemSep1: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DrawBoard;
    procedure DrawTile(Tile: TTile; Panel: TPanel);
    procedure ActionResetExecute(Sender: TObject);
    procedure ActionExitExecute(Sender: TObject);
    procedure ActionAboutExecute(Sender: TObject);

  private
    MGame: TGame;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

const
  TileColors: array[0..11, 0..1] of TColor =
  (
    (clBtnFace, clWindowText),
    (TColor($DAE4EE), TColor($656E77)),
    (TColor($C8E0ED), TColor($656E77)),
    (TColor($79B1F2), TColor($F2F6F9)),
    (TColor($6395F5), TColor($F2F6F9)),
    (TColor($5F7CF6), TColor($F2F6F9)),
    (TColor($3B5EF6), TColor($F2F6F9)),
    (TColor($72CFED), TColor($F2F6F9)),
    (TColor($61CCED), TColor($F2F6F9)),
    (TColor($50C8ED), TColor($F2F6F9)),
    (TColor($3FC5ED), TColor($F2F6F9)),
    (TColor($2EC2ED), TColor($F2F6F9))
  );

procedure TFormMain.FormCreate(Sender: TObject);
begin
  MGame := TGame.Create;

  DrawBoard;
end;

procedure TFormMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  MGame.KeyDown(Key);

  DrawBoard;
end;

procedure TFormMain.DrawBoard;
begin
  DrawTile(MGame.Board[0, 0], Tile1);
  DrawTile(MGame.Board[1, 0], Tile2);
  DrawTile(MGame.Board[2, 0], Tile3);
  DrawTile(MGame.Board[3, 0], Tile4);
  DrawTile(MGame.Board[0, 1], Tile5);
  DrawTile(MGame.Board[1, 1], Tile6);
  DrawTile(MGame.Board[2, 1], Tile7);
  DrawTile(MGame.Board[3, 1], Tile8);
  DrawTile(MGame.Board[0, 2], Tile9);
  DrawTile(MGame.Board[1, 2], Tile10);
  DrawTile(MGame.Board[2, 2], Tile11);
  DrawTile(MGame.Board[3, 2], Tile12);
  DrawTile(MGame.Board[0, 3], Tile13);
  DrawTile(MGame.Board[1, 3], Tile14);
  DrawTile(MGame.Board[2, 3], Tile15);
  DrawTile(MGame.Board[3, 3], Tile16);

  StatusBar.Panels[0].Text := 'Score: ' + IntToStr(MGame.Score);
end;

function Log2(Number: Integer): Integer;
asm
  bsr eax, eax
end;

procedure TFormMain.DrawTile(Tile: TTile; Panel: TPanel);
var
  ColorIndex: Integer;
begin
  if Tile.Value = 0 then
    Panel.Caption := ''
  else
    Panel.Caption := IntToStr(Tile.Value);

  ColorIndex := Log2(Tile.Value);
  Panel.Color := TileColors[ColorIndex, 0];
  Panel.Font.Color := TileColors[ColorIndex, 1];
end;

procedure TFormMain.ActionResetExecute(Sender: TObject);
begin
  MGame.Reset;

  DrawBoard;
end;

procedure TFormMain.ActionExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.ActionAboutExecute(Sender: TObject);
begin
  ShowMessage('T2046' + #13#10 + 'Version 1.0');
end;

end.

