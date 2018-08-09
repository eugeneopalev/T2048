unit Game;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Menus;

type
  TDirection = (dirUp, dirDown, dirLeft, dirRight);

  TTile = record
    Value: Cardinal;
    Locked: Boolean;
  end;

  TGame = class
    constructor Create;
    procedure Reset;
    procedure KeyDown(Key: Word);
  private
    MBoard: array[0..3, 0..3] of TTile;
    MScore: Cardinal;
    procedure AddTile;
    function Move(Direction: TDirection; Simulation: Boolean): Boolean;
    function GetTile(X, Y: Byte): TTile;
  public
    property Board[X, Y: Byte]: TTile read GetTile;
    property Score: Cardinal read MScore;
  end;

implementation

constructor TGame.Create;
begin
  Reset;
end;

procedure TGame.Reset;
var
  I, J: Byte;
begin
  for I := 0 to 3 do
    for J := 0 to 3 do
      MBoard[I, J].Value := 0;

  MScore := 0;

  AddTile;
  AddTile;
end;

procedure TGame.KeyDown(Key: Word);
var
  Moved: Boolean;
  I, J: Byte;
begin
  case Key of
    VK_UP:
      Moved := Move(dirUp, False);

    VK_DOWN:
      Moved := Move(dirDown, False);

    VK_LEFT:
      Moved := Move(dirLeft, False);

    VK_RIGHT:
      Moved := Move(dirRight, False);

    else Exit;
  end;

  if Moved then AddTile;

  for I := 0 to 3 do
    for J := 0 to 3 do
      if MBoard[I, J].Value = 2048 then
      begin
        ShowMessage('You win!' + #13#10 + '2048 tile reached!' + #13#10 + 'Your score is ' + IntToStr(MScore) + '.');
        Reset;
        Exit;
      end;

  if not (Move(dirUp, True) or Move(dirDown, True) or Move(dirLeft, True) or Move(dirRight, True)) then
  begin
    ShowMessage('Game over!' + #13#10 + 'Your score is ' + IntToStr(MScore));
    Reset;
    Exit;
  end;
end;

procedure TGame.AddTile;
var
  I, J: Byte;
begin
  Randomize;

  repeat
    I := Random(4);
    J := Random(4);
  until MBoard[I, J].Value = 0;

  if Random <= 0.9 then MBoard[I, J].Value := 2 else MBoard[I, J].Value := 4;
end;

function TGame.GetTile(X, Y: Byte): TTile;
begin
  Result := MBoard[X, Y];
end;

function TGame.Move(Direction: TDirection; Simulation: Boolean): Boolean;
var
  I, J, K: Byte;
begin
  Result := False;

  case Direction of
    dirUp:
      for I := 0 to 3 do
        for J := 1 to 3 do
          if MBoard[I, J].Value > 0 then
          begin
            K := J;
            while (K > 0) and (MBoard[I, K - 1].Value = 0) do
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[I, K - 1].Value := MBoard[I, K].Value;
              MBoard[I, K].Value := 0;
              Dec(K);
            end;
            if (K > 0) and (MBoard[I, K - 1].Value = MBoard[I, K].Value) and not MBoard[I, K - 1].Locked then
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[I, K - 1].Value := MBoard[I, K - 1].Value * 2;
              MBoard[I, K - 1].Locked := True;
              MBoard[I, K].Value := 0;
              MScore := MScore + MBoard[I, K - 1].Value;
            end;
          end;

    dirDown:
      for I := 0 to 3 do
        for J := 2 downto 0 do
          if MBoard[I, J].Value > 0 then
          begin
            K := J;
            while (K < 3) and (MBoard[I, K + 1].Value = 0) do
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[I, K + 1].Value := MBoard[I, K].Value;
              MBoard[I, K].Value := 0;
              Inc(K);
            end;
            if (K < 3) and (MBoard[I, K + 1].Value = MBoard[I, K].Value) and not MBoard[I, K + 1].Locked then
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[I, K + 1].Value := MBoard[I, K + 1].Value * 2;
              MBoard[I, K + 1].Locked := True;
              MBoard[I, K].Value := 0;
              MScore := MScore + MBoard[I, K + 1].Value;
            end;
          end;

    dirLeft:
      for I := 0 to 3 do
        for J := 1 to 3 do
          if MBoard[J, I].Value > 0 then
          begin
            K := J;
            while (K > 0) and (MBoard[K - 1, I].Value = 0) do
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[K - 1, I].Value := MBoard[K, I].Value;
              MBoard[K, I].Value := 0;
              Dec(K);
            end;
            if (K > 0) and (MBoard[K - 1, I].Value = MBoard[K, I].Value) and not MBoard[K, I].Locked then
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[K - 1, I].Value := MBoard[K - 1, I].Value * 2;
              MBoard[K - 1, I].Locked := True;
              MBoard[K, I].Value := 0;
              MScore := MScore + MBoard[K - 1, I].Value;
            end;
          end;

    dirRight:
      for I := 0 to 3 do
        for J := 2 downto 0 do
          if MBoard[J, I].Value > 0 then
          begin
            K := J;
            while (K < 3) and (MBoard[K + 1, I].Value = 0) do
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[K + 1, I].Value := MBoard[K, I].Value;
              MBoard[K, I].Value := 0;
              Inc(K);
            end;
            if (K < 3) and (MBoard[K + 1, I].Value = MBoard[K, I].Value) and not MBoard[K + 1, I].Locked then
            begin
              Result := True;
              if Simulation then
                Exit;

              MBoard[K + 1, I].Value := MBoard[K + 1, I].Value * 2;
              MBoard[K + 1, I].Locked := True;
              MBoard[K, I].Value := 0;
              MScore := MScore + MBoard[K + 1, I].Value;
            end;
          end;

    else
      Result := False;
  end;

  for I := 0 to 3 do
    for J := 0 to 3 do
      MBoard[I, J].Locked := False;
end;

end.

