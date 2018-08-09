object FormMain: TFormMain
  Left = 390
  Top = 166
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'T2048'
  ClientHeight = 442
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Tile1: TPanel
    Left = 8
    Top = 8
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Tile2: TPanel
    Left = 112
    Top = 8
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Tile3: TPanel
    Left = 216
    Top = 8
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Tile4: TPanel
    Left = 320
    Top = 8
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Tile5: TPanel
    Left = 8
    Top = 112
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Tile6: TPanel
    Left = 112
    Top = 112
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Tile7: TPanel
    Left = 216
    Top = 112
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Tile8: TPanel
    Left = 320
    Top = 112
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Tile9: TPanel
    Left = 8
    Top = 216
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object Tile10: TPanel
    Left = 112
    Top = 216
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Tile11: TPanel
    Left = 216
    Top = 216
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object Tile12: TPanel
    Left = 320
    Top = 216
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object Tile13: TPanel
    Left = 8
    Top = 320
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object Tile14: TPanel
    Left = 112
    Top = 320
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object Tile15: TPanel
    Left = 216
    Top = 320
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object Tile16: TPanel
    Left = 320
    Top = 320
    Width = 97
    Height = 97
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 423
    Width = 425
    Height = 19
    Panels = <
      item
        Text = 'Score:'
        Width = 120
      end>
  end
  object MainMenu: TMainMenu
    Left = 8
    Top = 8
    object MenuItemGame: TMenuItem
      Caption = 'Game'
      object MenuItemReset: TMenuItem
        Action = ActionReset
      end
      object MenuItemSep1: TMenuItem
        Caption = '-'
      end
      object MenuItemExit: TMenuItem
        Action = ActionExit
      end
    end
    object MenuItemHelp: TMenuItem
      Caption = 'Help'
      object MenuItemAbout: TMenuItem
        Action = ActionAbout
      end
    end
  end
  object ActionList: TActionList
    Left = 40
    Top = 8
    object ActionAbout: TAction
      Category = 'Help'
      Caption = 'About...'
      OnExecute = ActionAboutExecute
    end
    object ActionReset: TAction
      Category = 'Game'
      Caption = 'Reset'
      ShortCut = 16466
      OnExecute = ActionResetExecute
    end
    object ActionExit: TAction
      Category = 'Game'
      Caption = 'Exit'
      OnExecute = ActionExitExecute
    end
  end
end
