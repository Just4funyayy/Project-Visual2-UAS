program fiture_member;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Kustomer},
  Unit2 in 'Unit2.pas' {Koneksi: TDataModule},
  Unit3 in 'Unit3.pas' {REPORT};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TKustomer, Kustomer);
  Application.CreateForm(TKoneksi, Koneksi);
  Application.CreateForm(TREPORT, REPORT);
  Application.Run;
end.
