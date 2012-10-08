unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, TeEngine, Series, ExtCtrls, TeeProcs, Chart, XPMan;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Chart: TChart;
    Series1: TLineSeries;
    Gj1: TMenuItem;
    N4: TMenuItem;
    PopupMenu: TPopupMenu;
    N3D1: TMenuItem;
    XPManifest1: TXPManifest;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Visualize;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3D1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Tmin, Tmax, A, C: Real;
  end;

var
  Form1: TForm1;

implementation

uses Unit2, math;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
tmin:=0;
Tmax:=5;
A := 1;
C:=1;
visualize;
end;

procedure TForm1.Visualize;
var
dt, xi: real;
amount: integer;
begin
amount := 100;
dt := (Tmax - Tmin)/amount;
xi:=Tmin;
Chart.FreeAllSeries;
chart.AddSeries(TLineSeries.Create(Self));
chart.AddSeries(TLineSeries.Create(Self));
chart.AddSeries(TLineSeries.Create(Self));
while xi<=Tmax do
begin
    chart.Series[0].AddXY(xi, exp(-A*xi)*sin(2*pi*C*xi));
    chart.Series[1].AddXY(xi, exp(-A*xi));
    chart.Series[2].AddXY(xi, -exp(-A*xi));

    xi:=xi+dt;
end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
messagedlg('Разработчик - это Стебаев Дмитрий, студент КС-41.', mtInformation, [mbok], 0);
end;

procedure TForm1.N3D1Click(Sender: TObject);
var
i: integer;
begin
if n3d1.Tag = 0 then
begin
  n3d1.Caption := 'Включить 2D режим';
  n3d1.Tag := 1;
  chart.View3D := true;
end
else
begin
  n3d1.Caption := 'Включить 3D режим';
  n3d1.Tag := 0;
  chart.View3D := false;
end;
end;

end.
