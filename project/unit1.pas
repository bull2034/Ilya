unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    SpinEdit1: TSpinEdit;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure Shape2ChangeBounds(Sender: TObject);
    procedure Shape3ChangeBounds(Sender: TObject);
    procedure Shape4ChangeBounds(Sender: TObject);
    procedure Shape5ChangeBounds(Sender: TObject);
    procedure Shape6ChangeBounds(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  A: array [1..365] of integer;
  B: integer;
  s: integer;
  sum : integer;
  Lxrd : real;
  dob: integer;
  Kvd : integer;
  Hope : integer;
  nigga : integer;
  Lxxk : integer;
  idxl : integer ;
  min : integer;
  max : integer;
  n : integer;
  Nazar : integer;
  l : integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
begin
   B:= SpinEdit1.Value;
   for i:=1 to B do
 begin
  A[i]:=StrToInt(InputBox('Елементи масиву','Введіть елемент №'+ IntToStr(i),'0'))
 end;
end;

procedure TForm1.Button10Click(Sender: TObject);
var i:integer;
begin
 B:=SpinEdit1.Value;
 lxxk:=0;
 Memo1.Lines.Clear;
Edit1.Caption:=' ';
 for i:= 1 to B do
 if a[i]= StrToInt (Edit2.Text) then
 lxxk:=lxxk+1;
  Memo1.Lines.Add (' Знайдено елементів= ' + inttostr(lxxk));
 Edit1.Text:=Edit1.Text+' Знайдено елементів = '+ inttostr(lxxk);
end;

procedure TForm1.Button11Click(Sender: TObject);
var i:integer;
begin
 max:=a[1];
 n:=1;
 B:= SpinEdit1.Value;
   Memo1.Lines.Clear;
   Edit1.Caption:=' ';
   for i:=2 to B do
  begin
   if a[i]>max then
   begin
     max:=a[i];
     n:=i;
   end;
  end;
  Memo1.Lines.Add ('Найбільше число = ' + inttostr(max));
 Edit1.Text:=Edit1.Text+'Найбільше число = '+ inttostr(max);
end;

procedure TForm1.Button12Click(Sender: TObject);
var i:integer;
begin
 B:= SpinEdit1.Value;
    Memo1.Lines.Clear;
    Edit1.Caption:=' ';
    min:= a[1];
     nazar := 1;
    for i:=2 to B do
  begin
   if a[i]<min then
   begin
    min :=a[i];
    nazar := i;
   end;
  end;
  Memo1.Lines.Add ('Найменше число = ' + inttostr(min));
 Edit1.Text:=Edit1.Text+'Найменше  число = '+ inttostr(min);
end;

procedure TForm1.Button13Click(Sender: TObject);
var i : integer;
  r: array [0..7] of TShape;
begin
for i:= 0 to 7 do
begin
canvas.Rectangle(l,Form1.Height,l+20,Form1.Height-a[i]);
l:= l+25;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i: integer;
begin
   for i:=1 to B  do
   begin
    Edit1.Text:=Edit1.Text+' '+IntToStr(A[i]);
    Memo1.Lines.Add('елемент № '+IntToStr(i)+' - '+IntToStr(A[i])+'');
   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i: integer;
begin
   s:=0;
   B:= SpinEdit1.Value;
   Memo1.Lines.Clear;
Edit1.Caption:=' ';
   for i:=1 to B  do
   begin
    s:=s+a[i];
end;
  Memo1.Lines.Add ('Сума = ' + inttostr(s));
 Edit1.Text:=Edit1.Text+'Сума = '+ inttostr(s);
end;

procedure TForm1.Button4Click(Sender: TObject);
var i : integer;
begin
 B:= SpinEdit1.Value;
    Memo1.Lines.Clear;
Edit1.Caption:=' ';
 for i:=1to B do
 Begin
 Dob:=a[i]*a[i];
 end;
 Memo1.Lines.Add ('Добуток числа = ' + inttostr(Dob));
 Edit1.Text:=Edit1.Text+ 'Добуток числа = '+ inttostr(Dob);
 dob:=0;
end;

procedure TForm1.Button5Click(Sender: TObject);
var i:integer;
begin
 B:= SpinEdit1.Value;
    Memo1.Lines.Clear;
Edit1.Caption:=' ';
 for i:= 1 to B do
 begin
 kvd:=a[i]*a[i];
 end;
 Memo1.Lines.Add ('Квадрат числа = ' + inttostr (Kvd));
 Edit1.Text:=Edit1.Text+ 'Квадрат числа = '+ inttostr (Kvd);
end;


procedure TForm1.Button6Click(Sender: TObject);
var i:integer;
begin
  B:= SpinEdit1.Value;
  Memo1.Lines.Clear;
  Edit1.Caption:=' ';
  for i:=1 to B do
  begin
  sum := sum + a[i];
  Lxrd:= sum/B;
  end;

  Memo1.Lines.Add ('Середнє значення = ' + FloatTOStr (Lxrd));
 Edit1.Text:=Edit1.Text+ 'Середнє значення = '+ FloatToStr (Lxrd);
 Lxrd:= 0;
 sum:=0;
end;

procedure TForm1.Button7Click(Sender: TObject);
var i : integer;
begin
 Edit1.Caption:=' ';
  Memo1.Lines.Clear;
 idxl :=0;
   for i:=1 to B do
     begin
     if a[i]=0 then idxl:= idxl+1;
     end;
 Memo1.Lines.Add ('Нульові значення масиву = ' + inttostr (idxl));
 Edit1.Text:=Edit1.Text+ 'Нульові значення масиву  = '+ inttostr (idxl);
end;

procedure TForm1.Button8Click(Sender: TObject);
var i : integer;
begin
    Edit1.Caption:=' ';
  Memo1.Lines.Clear;
   hope :=0;
   for i:=1 to B do
     begin
     if a[i]<0 then hope:= hope+1
     end;
 Memo1.Lines.Add ('Від"ємні значення масиву = ' + inttostr (hope));
 Edit1.Text:=Edit1.Text+ 'Від"ємні значення масиву  = '+ inttostr (hope);
end;

procedure TForm1.Button9Click(Sender: TObject);
var i : integer;
begin
 Edit1.Caption:=' ';
  Memo1.Lines.Clear;
 nigga :=0;
  for i:=1 to B do
   begin
   if a[i]>0 then nigga:= nigga+1;
end;
 Memo1.Lines.Add ('Додатні значення масиву = ' + inttostr (nigga));
 Edit1.Text:=Edit1.Text+ 'Додатні значення масиву  = '+ inttostr (nigga);
 end;

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin
  Shape1.Hide;
end;

procedure TForm1.Shape2ChangeBounds(Sender: TObject);
begin
  Shape2.Hide;
end;

procedure TForm1.Shape3ChangeBounds(Sender: TObject);
begin
  Shape4.Hide;
end;

procedure TForm1.Shape4ChangeBounds(Sender: TObject);
begin
  Shape3.Hide;
end;

procedure TForm1.Shape5ChangeBounds(Sender: TObject);
begin
  Shape5.Hide;
end;

procedure TForm1.Shape6ChangeBounds(Sender: TObject);
begin
  Shape6.Hide;
end;

end.
