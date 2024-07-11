object Koneksi: TKoneksi
  OldCreateOrder = False
  Left = 221
  Top = 319
  Height = 225
  Width = 281
  object DBPenjualan: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = '.\libmysql.dll'
    Left = 40
    Top = 40
  end
  object QKustomer: TZQuery
    Connection = DBPenjualan
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 104
    Top = 40
  end
  object DKustomer: TDataSource
    DataSet = QKustomer
    Left = 104
    Top = 104
  end
end
