unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TKoneksi = class(TDataModule)
    DBPenjualan: TZConnection;
    QKustomer: TZQuery;
    DKustomer: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Koneksi: TKoneksi;

implementation

{$R *.dfm}

end.
