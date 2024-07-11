unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet;

type
  TREPORT = class(TForm)
    RKustomer: TfrxReport;
    DKustomer: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REPORT: TREPORT;

implementation

uses Unit2, TypInfo;

{$R *.dfm}

procedure TREPORT.FormShow(Sender: TObject);
begin
RKustomer.ShowReport(True);
end;

end.
