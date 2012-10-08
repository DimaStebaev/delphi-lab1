object Form2: TForm2
  Left = 339
  Top = 278
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 183
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 20
    Width = 23
    Height = 13
    Caption = 'Tmin'
  end
  object Label2: TLabel
    Left = 120
    Top = 56
    Width = 26
    Height = 13
    Caption = 'Tmax'
  end
  object Label3: TLabel
    Left = 18
    Top = 88
    Width = 125
    Height = 13
    Caption = 'A ('#1076#1077#1082#1088#1077#1084#1077#1085#1090' '#1079#1072#1090#1091#1093#1072#1085#1080#1103')'
  end
  object Label4: TLabel
    Left = 40
    Top = 119
    Width = 102
    Height = 13
    Caption = 'C ('#1085#1077#1089#1091#1097#1072#1103' '#1095#1072#1089#1090#1086#1090#1072')'
  end
  object EditTmin: TEdit
    Left = 154
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditTmin'
    OnKeyPress = EditKeyPress
  end
  object EditTmax: TEdit
    Left = 154
    Top = 52
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EditTmax'
    OnKeyPress = EditKeyPress
  end
  object EditA: TEdit
    Left = 154
    Top = 84
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'EditA'
    OnKeyPress = EditKeyPress
  end
  object ButtonOK: TButton
    Left = 61
    Top = 144
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 3
    OnClick = ButtonOKClick
  end
  object ButtonCancel: TButton
    Left = 157
    Top = 144
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = ButtonCancelClick
  end
  object EditC: TEdit
    Left = 154
    Top = 115
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'EditC'
    OnKeyPress = EditKeyPress
  end
end
