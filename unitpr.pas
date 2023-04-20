unit unitPr;
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  ExtCtrls, Math, Types;

type

  { TFont }

  TFont = class(TForm)
    ButtonRashetHard: TButton;
    ButtonRaschet: TButton;
    EditSrockHard: TEdit;
    EditsrocHard: TEdit;
    EditdepozitHard: TEdit;
    EditProcent: TEdit;
    EditMonth: TEdit;
    EditDepozit: TEdit;
    Imageformease: TImage;
    Imageformease2: TImage;
    Imageform2: TImage;
    Imageform: TImage;
    LabelSrokHard: TLabel;
    LabelDepozitHard: TLabel;
    LabelProcentHard: TLabel;
    LabelFallProcentHard: TLabel;
    LabelFallSummaHard: TLabel;
    LabeProcent: TLabel;
    LabelMonth: TLabel;
    LabelDepozit: TLabel;
    LabelItog: TLabel;
    LabelProcentitog: TLabel;
    MemoFallSummaHard: TMemo;
    MemoFallProcentHard: TMemo;
    MemoItog: TMemo;
    MemoProcentitog: TMemo;
    PageControl1: TPageControl;
    EaseProcent: TTabSheet;
    HardProcent: TTabSheet;
    procedure ButtonRashetHardClick(Sender: TObject);
    procedure ButtonRaschetClick(Sender: TObject);
    procedure EditSrockHardChange(Sender: TObject);
    procedure EditsrocHardChange(Sender: TObject);
    procedure EditdepozitHardChange(Sender: TObject);
    procedure EditProcentChange(Sender: TObject);
    procedure EditMonthChange(Sender: TObject);
    procedure EditDepozitChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure LabelItogClick(Sender: TObject);
    procedure MemoItogChange(Sender: TObject);
    procedure MemoProcentitogChange(Sender: TObject);
    procedure HardProcentContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Font: TFont;
  a,b,c,i,d,f,g,s,e,otv:real;

implementation

{$R *.lfm}

{ TFont }

procedure TFont.LabelItogClick(Sender: TObject);
begin

end;

procedure TFont.MemoItogChange(Sender: TObject);
begin

end;

procedure TFont.MemoProcentitogChange(Sender: TObject);
begin


end;

procedure TFont.HardProcentContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TFont.EditProcentChange(Sender: TObject);
begin
  if not(EditProcent.text = '') then
  a:=strtofloat(EditProcent.text);
end;

procedure TFont.ButtonRaschetClick(Sender: TObject);
begin
  i:=(c*(a/12)*b)/100;
  i:=RoundTo(i,-2);
  MemoProcentitog.text:=floattostr(i);
  d:=i+c;
  d:=RoundTo(d,-2);
  MemoItog.text:=floattostr(d);
end;

procedure TFont.ButtonRashetHardClick(Sender: TObject);
begin
  e:= s * Power(1 + (f / 100 / 12), g);
  e:=RoundTo(e,-2);
  MemoFallProcentHard.text:=floattostr(e);
  otv:= e-s;
  otv:=RoundTo(otv,-2);
  MemoFallSummaHard.text:=floattostr(otv);
end;

procedure TFont.EditSrockHardChange(Sender: TObject);
begin
  if not(EditSrockHard.text = '') then
  f:=strtofloat(EditSrockHard.text);
end;

procedure TFont.EditsrocHardChange(Sender: TObject);
begin
  if not(EditsrocHard.text = '') then
  g:=strtofloat(EditsrocHard.text);
end;

procedure TFont.EditdepozitHardChange(Sender: TObject);
begin
  if not(EditdepozitHard.text = '') then
  s:=strtofloat(EditdepozitHard.text);
end;

procedure TFont.EditMonthChange(Sender: TObject);
begin
  if not(EditMonth.text = '') then
  b:=strtofloat(EditMonth.text);
end;

procedure TFont.EditDepozitChange(Sender: TObject);
begin
  if not(EditDepozit.text = '') then
  c:=strtofloat(EditDepozit.text);
end;

procedure TFont.Label1Click(Sender: TObject);
begin

end;



end.
