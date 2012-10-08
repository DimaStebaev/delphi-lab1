object Form1: TForm1
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Caption = #1047#1072#1090#1091#1093#1072#1085#1080#1077' '#1089#1080#1075#1085#1072#1083#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Chart: TChart
    Left = 0
    Top = 0
    Width = 688
    Height = 426
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1079#1072#1090#1091#1093#1072#1085#1080#1103' '#1089#1080#1075#1085#1072#1083#1072)
    Legend.Visible = False
    View3D = False
    Align = alClient
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object MainMenu1: TMainMenu
    Left = 136
    Top = 48
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
  end
end
