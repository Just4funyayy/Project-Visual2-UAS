unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TKustomer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Knik: TEdit;
    Knama: TEdit;
    Ktelp: TEdit;
    Kemail: TEdit;
    Kalamat: TEdit;
    Kmember: TComboBox;
    Kbaru: TButton;
    Ksimpan: TButton;
    Kedit: TButton;
    Khapus: TButton;
    Kbatal: TButton;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Kcnama: TEdit;
    Kcetak: TButton;
    Kdiskon: TLabel;
    procedure PosisiAwal;
    procedure Bersih;
    procedure KondisiDiskon;
    procedure KbaruClick(Sender: TObject);
    procedure KbatalClick(Sender: TObject);
    procedure KsimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure KeditClick(Sender: TObject);
    procedure KhapusClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure KcnamaChange(Sender: TObject);
    procedure KmemberChange(Sender: TObject);
    procedure KcetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kustomer: TKustomer;
  id: String;

implementation

uses Unit2, ZAbstractRODataset, DB, Unit3;

{$R *.dfm}

procedure TKustomer.PosisiAwal;
begin
Bersih;
Knik.Enabled := False;
Knama.Enabled := False;
Ktelp.Enabled := False;
Kemail.Enabled := False;
Kalamat.Enabled := False;
Kmember.Enabled := False;
Kbaru.Enabled := True;
Ksimpan.Enabled := False;
Kedit.Enabled := False;
Khapus.Enabled := False;
Kbatal.Enabled := False;
end;

Procedure TKustomer.Bersih;
begin
Knik.Clear;
Knama.Clear;
Ktelp.Clear;
Kemail.Clear;
Kalamat.Clear;
Kmember.Text := '';
Kdiskon.Caption := '';
end;

procedure TKustomer.KbaruClick(Sender: TObject);
begin
Bersih;
Knik.Enabled := True;
Knama.Enabled := True;
Ktelp.Enabled := True;
Kemail.Enabled := True;
Kalamat.Enabled := True;
Kmember.Enabled := True;
Kbaru.Enabled := False;
Ksimpan.Enabled := True;
Kedit.Enabled := False;
Khapus.Enabled := False;
Kbatal.Enabled := True;
end;

procedure TKustomer.KondisiDiskon;
begin
if (Kmember.ItemIndex = 0) or (Kmember.Text = 'YES') then
  Kdiskon.Caption := '10%'
else if (Kmember.ItemIndex = 1) or (Kmember.Text = 'NO') then
  Kdiskon.Caption := '5%'
else
  Kdiskon.Caption := '';

end;

procedure TKustomer.KbatalClick(Sender: TObject);
begin
PosisiAwal;
end;

procedure TKustomer.KsimpanClick(Sender: TObject);
begin
with Koneksi.QKustomer do
 begin
 SQL.Clear;
 SQL.Add('insert into kustomer values(null,"'+Knik.Text+'","'+Knama.Text+'","'+Ktelp.Text+'","'+Kemail.Text+'","'+Kalamat.Text+'","'+Kmember.Text+'")');
 ExecSQL;

 SQL.Clear;
 SQL.Add('select * from kustomer');
 Open;
 end;
 ShowMessage('Data Berhasil Disimpan!');
 PosisiAwal;
end;

procedure TKustomer.KeditClick(Sender: TObject);
begin
with Koneksi.QKustomer do
 begin
 SQL.Clear;
 SQL.Add('update kustomer set nik = "'+Knik.Text+'", nama = "'+Knama.Text+'", telp = "'+Ktelp.Text+'", email = "'+Kemail.Text+'", member = "'+Kmember.Text+'" where id = "'+id+'" ');
 ExecSQL;

 SQL.Clear;
 SQL.Add('select * from kustomer');
 Open;
 end;
 ShowMessage('Data Berhasil Diupdate!');
 PosisiAwal;
end;

procedure TKustomer.KhapusClick(Sender: TObject);
begin
with Koneksi.QKustomer do
 begin
 SQL.Clear;
 SQL.Add('delete from kustomer where id = "'+id+'" ');
 ExecSQL;

 SQL.Clear;
 SQL.Add('select * from kustomer');
 Open;
 end;
 ShowMessage('Data Berhasil Dihapus!');
 PosisiAwal;
end;

procedure TKustomer.DBGrid1CellClick(Column: TColumn);
begin
id := Koneksi.QKustomer.Fields[0].AsString;
Knik.Text := Koneksi.QKustomer.Fields[1].AsString;
Knama.Text := Koneksi.QKustomer.Fields[2].AsString;
Ktelp.Text := Koneksi.QKustomer.Fields[3].AsString;
Kemail.Text := Koneksi.QKustomer.Fields[4].AsString;
Kalamat.Text := Koneksi.QKustomer.Fields[5].AsString;
Kmember.Text := Koneksi.QKustomer.Fields[6].AsString;
Knik.Enabled := True;
Knama.Enabled := True;
Ktelp.Enabled := True;
Kemail.Enabled := True;
Kalamat.Enabled := True;
Kmember.Enabled := True;
Kbaru.Enabled := True;
Ksimpan.Enabled := False;
Kedit.Enabled := True;
Khapus.Enabled := True;
Kbatal.Enabled := True;
KondisiDiskon;
end;

procedure TKustomer.FormShow(Sender: TObject);
begin
PosisiAwal;
Koneksi.QKustomer.Active := True;
end;

procedure TKustomer.KcnamaChange(Sender: TObject);
begin
with Koneksi.QKustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from kustomer where nama like "%'+Kcnama.Text+'%"');
    Open;
  end;
end;

procedure TKustomer.KmemberChange(Sender: TObject);
begin
KondisiDiskon;
end;

procedure TKustomer.KcetakClick(Sender: TObject);
begin
REPORT.Show;
end;

end.
