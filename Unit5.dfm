object Form5: TForm5
  Left = 1106
  Top = 198
  Width = 799
  Height = 819
  Caption = 'Kasir'
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
  object Label10: TLabel
    Left = 280
    Top = 32
    Width = 220
    Height = 24
    Caption = 'Kasir Omah nDaren'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 88
    Width = 537
    Height = 321
    Caption = 'Pemesanan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 54
      Height = 16
      Caption = 'Menu 1'
    end
    object Label2: TLabel
      Left = 24
      Top = 104
      Width = 54
      Height = 16
      Caption = 'Menu 2'
    end
    object Label3: TLabel
      Left = 24
      Top = 152
      Width = 71
      Height = 16
      Caption = 'Minuman'
    end
    object Label4: TLabel
      Left = 400
      Top = 32
      Width = 53
      Height = 16
      Caption = 'Jumlah'
    end
    object Label5: TLabel
      Left = 24
      Top = 224
      Width = 54
      Height = 16
      Caption = 'Diskon'
    end
    object Label6: TLabel
      Left = 24
      Top = 240
      Width = 56
      Height = 16
      Caption = 'Member'
    end
    object ComboBox1: TComboBox
      Left = 152
      Top = 56
      Width = 201
      Height = 24
      ItemHeight = 16
      TabOrder = 0
      Text = '- Pilih Menu - '
      Items.Strings = (
        'Nasi Putih'
        'Nasi Merah'
        'Nasi Sayur')
    end
    object ComboBox2: TComboBox
      Left = 152
      Top = 104
      Width = 201
      Height = 24
      ItemHeight = 16
      TabOrder = 1
      Text = '- Pilih Menu -'
      Items.Strings = (
        'Ayam Goreng'
        'Bebek Goreng'
        'Pepes Nila'
        'Pecel Lele'
        'Garang Asem'
        'Sop Omah nDaren')
    end
    object ComboBox3: TComboBox
      Left = 152
      Top = 152
      Width = 201
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Text = '- Pilih Menu -'
      Items.Strings = (
        'Teh Manis Panas/Es'
        'Jeruk Peras Panas/Es'
        'Oreo Crush'
        'Flamingo'
        'Es Campur')
    end
    object Edit1: TEdit
      Left = 400
      Top = 56
      Width = 65
      Height = 24
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 400
      Top = 104
      Width = 65
      Height = 24
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 400
      Top = 152
      Width = 65
      Height = 24
      TabOrder = 5
    end
    object ComboBox4: TComboBox
      Left = 152
      Top = 232
      Width = 201
      Height = 24
      ItemHeight = 16
      TabOrder = 6
      Text = '- Pilih Jenis Member -'
      Items.Strings = (
        'Silver'
        'Gold'
        'Platinum')
    end
    object Button1: TButton
      Left = 232
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 7
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 192
    Top = 440
    Width = 409
    Height = 273
    Caption = 'Pembayaran'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 24
      Top = 48
      Width = 42
      Height = 16
      Caption = 'Total'
    end
    object Label8: TLabel
      Left = 24
      Top = 96
      Width = 88
      Height = 16
      Caption = 'Pembayaran'
    end
    object Label9: TLabel
      Left = 24
      Top = 208
      Width = 76
      Height = 16
      Caption = 'Kembalian'
    end
    object Edit4: TEdit
      Left = 152
      Top = 48
      Width = 201
      Height = 24
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 152
      Top = 96
      Width = 201
      Height = 24
      TabOrder = 1
    end
    object Button2: TButton
      Left = 192
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Bayar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit6: TEdit
      Left = 152
      Top = 200
      Width = 201
      Height = 24
      TabOrder = 3
    end
  end
  object Button3: TButton
    Left = 640
    Top = 624
    Width = 89
    Height = 33
    Caption = 'Tutup Kasir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 640
    Top = 584
    Width = 75
    Height = 33
    Caption = 'New'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 672
    Top = 56
    Width = 89
    Height = 33
    Caption = 'Daftar Menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trajan Pro'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button5Click
  end
end
