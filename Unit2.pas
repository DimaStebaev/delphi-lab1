unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Buttons, ExtCtrls;

type
  TForm2 = class(TForm)
    EditTmin: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditTmax: TEdit;
    Label3: TLabel;
    EditA: TEdit;
    ButtonOK: TButton;
    ButtonCancel: TButton;
    Label4: TLabel;
    EditC: TEdit;
    XPManifest1: TXPManifest;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.EditKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', DecimalSeparator, '-', char(vk_Back)]) then key:=#0
else if (key = DecimalSeparator) and (pos(decimalseparator, (sender as tedit).Text)>0) then key:=#0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
editTmin.Text:=floattostr(form1.tmin);
editTmax.Text:=floattostr(form1.tmax);
editA.Text:=floattostr(form1.A);
editC.Text:=floattostr(form1.C);
end;

procedure TForm2.ButtonCancelClick(Sender: TObject);
begin
editTmin.Text:=floattostr(form1.tmin);
editTmax.Text:=floattostr(form1.tmax);
editA.Text:=floattostr(form1.A);
editC.Text:=floattostr(form1.C);
form2.Close;
end;

procedure TForm2.ButtonOKClick(Sender: TObject);
var
Tmin, Tmax, A, C: real;
begin
try
  Tmin:=strtofloat(editTmin.Text);
  Tmax := strtofloat(editTmax.Text);
  a := strtofloat(editA.Text);
  c := strtofloat(editC.Text);
except
  MessageDlg('¬ведЄнные данные некоректны', mtError, [mbOK], 0);
  //ButtonCancel.Click;
  exit;
end;

if Tmin<0 then
begin
    MessageDlg('Tmin должно быть не меньше нул€', mtInformation, [mbOK], 0);
    exit;
end;
if Tmax<=Tmin then
begin
    MessageDlg('Tmax должно быть больше Tmin', mtInformation, [mbOK], 0);
    exit;
end;

form1.Tmin := Tmin;
form1.Tmax := Tmax;
form1.A := A;
form1.C:=c;
close;
form1.Visualize;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
buttoncancel.Click;
end;

procedure TForm2.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
(sender as tpanel).BevelOuter := bvlowered;
(sender as tpanel).BevelInner := bvlowered;
end;

procedure TForm2.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
(sender as tpanel).BevelOuter := bvRaised;
panel1.BevelInner := bvRaised;
end;

end.

