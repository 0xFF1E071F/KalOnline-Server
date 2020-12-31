unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

function StringtoHex(Data: string): string;
var 
  i, i2: Integer;
  s: string;
begin
  i2 := 1;
  for i := 1 to Length(Data) do
  begin
    Inc(i2);
    if i2 = 2 then
    begin
      s  := s + ' ';
      i2 := 1;
    end;
    s := s + IntToHex(Ord(Data[i]), 2);
  end;
  Result := s;
end;

function XorStr(Stri, Strkey: String): String;
var 
    Longkey: string; 
    I: Integer; 
    Next: char; 
begin 
    for I := 0 to (Length(Stri) div Length(Strkey)) do
    Longkey := Longkey + Strkey; 
    for I := 1 to length(Stri) do 
    begin 
        Next := chr((ord(Stri[i]) xor ord(Longkey[i]))); 
        Result := Result + Next; 
    end; 
end; 

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
 edit2.text := XorStr(edit1.text, '250');
 edit3.Text := StringtoHex(edit2.text);

end;

end.
