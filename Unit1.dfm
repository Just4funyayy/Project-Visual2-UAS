object Kustomer: TKustomer
  Left = 594
  Top = 178
  Width = 795
  Height = 743
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 30
    Height = 20
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 51
    Height = 20
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 44
    Height = 20
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 55
    Height = 20
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 176
    Width = 71
    Height = 20
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 608
    Width = 153
    Height = 20
    Caption = 'MASUKKAN NAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 304
    Top = 216
    Width = 93
    Height = 20
    Caption = 'DISKON   : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 216
    Width = 78
    Height = 20
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Kdiskon: TLabel
    Left = 408
    Top = 216
    Width = 6
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Knik: TEdit
    Left = 136
    Top = 16
    Width = 617
    Height = 21
    TabOrder = 0
  end
  object Knama: TEdit
    Left = 136
    Top = 56
    Width = 617
    Height = 21
    TabOrder = 1
  end
  object Ktelp: TEdit
    Left = 136
    Top = 96
    Width = 617
    Height = 21
    TabOrder = 2
  end
  object Kemail: TEdit
    Left = 136
    Top = 136
    Width = 617
    Height = 21
    TabOrder = 3
  end
  object Kalamat: TEdit
    Left = 136
    Top = 176
    Width = 617
    Height = 21
    TabOrder = 4
  end
  object Kmember: TComboBox
    Left = 136
    Top = 216
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = KmemberChange
    Items.Strings = (
      'YES'
      'NO')
  end
  object Kbaru: TButton
    Left = 136
    Top = 264
    Width = 89
    Height = 33
    Caption = 'BARU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = KbaruClick
  end
  object Ksimpan: TButton
    Left = 264
    Top = 264
    Width = 89
    Height = 33
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = KsimpanClick
  end
  object Kedit: TButton
    Left = 400
    Top = 264
    Width = 89
    Height = 33
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = KeditClick
  end
  object Khapus: TButton
    Left = 536
    Top = 264
    Width = 89
    Height = 33
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = KhapusClick
  end
  object Kbatal: TButton
    Left = 664
    Top = 264
    Width = 89
    Height = 33
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = KbatalClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 328
    Width = 729
    Height = 249
    DataSource = Koneksi.DKustomer
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'member'
        Visible = True
      end>
  end
  object Kcnama: TEdit
    Left = 200
    Top = 608
    Width = 553
    Height = 21
    TabOrder = 12
    OnChange = KcnamaChange
  end
  object Kcetak: TButton
    Left = 24
    Top = 648
    Width = 729
    Height = 33
    Caption = 'CETAK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = KcetakClick
  end
end
