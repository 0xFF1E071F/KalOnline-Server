unit decode;
     
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls;

function LoadTable(data:string):boolean;
function Text(text:string;tablenr:integer):string;

implementation

var
 table:array[0..199,0..255] of byte;

function LoadTable(data:string):boolean;
var
 temp:tstringlist;
 x,y,i,s:integer;
begin
 result:=false;
  temp:=tstringlist.Create;
  temp.LoadFromFile(data);
  i:=0;
  s:=1;
  for x:= 0 to 199 do
  begin
   for y:= 0 to 255 do
   begin
    table[x,y]:=strtoint(temp.Strings[i]);
    i:=i+1;
   end;
  end;
  temp.free;
 result:=true;
end;

function Text(text:string;tablenr:integer):string;
var
 i,nr,nrr:byte;
begin

 result:=text;
 //exit;

 result:='';
 nr:=tablenr;
 nrr:=nr;
 {
 if nr = 7  then nrr:=8 ;
 if nr = 8  then nrr:=51;
 if nr = 40 then nrr:=54;
 if nr = 51 then nrr:=38;
 if nr = 54 then nrr:=5 ;
 if nr = 5  then nrr:=7 ;
 if nr = 10 then nrr:=19;
 if nr = 19 then nrr:=10;
 if nr = 38 then nrr:=40;
 }
 for i:= 1 to length(text) do
 begin
  result:=result+chr(table[nrr,ord(text[i])]);
 end;
end;

end.
