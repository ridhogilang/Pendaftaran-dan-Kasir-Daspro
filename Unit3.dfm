object Form3: TForm3
  Left = 530
  Top = 292
  Width = 498
  Height = 371
  Caption = 'Sign In'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 40
    Width = 81
    Height = 24
    Caption = 'Sign In'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 112
    Width = 72
    Height = 16
    Caption = 'Username'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 152
    Width = 27
    Height = 16
    Caption = 'PIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 192
    Top = 112
    Width = 193
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 152
    Width = 193
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 312
    Top = 184
    Width = 73
    Height = 17
    Caption = 'Show PIN'
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object Button1: TButton
    Left = 128
    Top = 248
    Width = 89
    Height = 33
    Caption = 'Login '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 248
    Width = 81
    Height = 33
    Caption = 'Cancel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
end
