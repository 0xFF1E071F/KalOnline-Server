unit item;

interface

uses header,SysUtils,Types,windows,ScktComp;

procedure Drop(socket:tcustomwinsocket;itemname:word;x,y:dword;howmuch:dword);
procedure AddItem(player:ponline;itemname,toadd:dword);
procedure LoadInventory(player:ponline);
procedure StartSystem;
procedure MobDrop(socket:tcustomwinsocket;mob:Pmob);
procedure PickUp(id:dword);

type TDDrop2 = record
    dice:word;
    wich:word;
end;

type TDropList = record
    howmuch:word;
    group:array[0..20] of tddrop2;
end;

type tThedrop2 = record
    dice:word;
    item:word;
    prefix:word;
end;

type tThedrop = record
    howmuch:word;
    items:array[0..20] of tThedrop2;
end;

type titemstate = record
    index:word;
    classe:string[30];
    level:word;
    wear:byte;
    plural:byte;
end;

var it:word;
    droplist:array[0..1050] of TDropList;
    thedrop:array[0..2140] of TtheDrop;
    whatitem:array[0..1000] of titemstate; //yeah yeah
    toread:tddrop2;
    toread2:tthedrop2;

implementation

uses map;

procedure PickUp(id:dword);
var
 now:tnowaway;
begin
 if not dro[id-$FFFF].here then exit;
 dro[id-$FFFF].here:=false;
 //soso.. pickup -.-
 AddItem(active,dro[id-$FFFF].packet.itemname,dro[id-$FFFF].packet.looks);
 //so delte from map
 now.size:=sizeof(now);
 now.typ:=59;
 now.id:=id;
 send(nil,now,now.size,true,false,dro[id-$FFFF].packet.x,dro[id-$FFFF].packet.y);
 DeleteDrop(id-$FFFF); //away witht hsi shit
end;

function GetOrNot(nr:integer):boolean;
var
     z: real;
begin
     Randomize;
     z := random;

     if (z <= nr/1000) then
     begin
          Result :=  true;
     end else begin
          Result :=  false;
     end;
end;

procedure MobDrop(socket:tcustomwinsocket;mob:Pmob);
var
 i,s,x,too,yesdrop:integer;
begin
yesdrop:=0;
 //so so.. ith group 1
 for i := 0 to  droplist[mob^.itemgroup1].howmuch do
 begin
  if GetOrNot(droplist[mob^.itemgroup1].group[i].dice) then    //so need nr generator..
  begin
   //got it..
   for s := 0 to thedrop[droplist[mob^.itemgroup1].group[i].wich].howmuch do
   begin
    too:=0;
    if thedrop[droplist[mob^.itemgroup1].group[i].wich].items[s].item = 31 then too:=2;
     for x:= 0 to too do
     if GetOrNot(thedrop[droplist[mob^.itemgroup1].group[i].wich].items[s].dice) then
     begin
      //got item ^^
      Drop(socket,thedrop[droplist[mob^.itemgroup1].group[i].wich].items[s].item,mob^.Packet.x,mob^.Packet.y,thedrop[droplist[mob^.itemgroup1].group[i].wich].items[s].prefix);
      yesdrop:=yesdrop+1;
     end;
   end;
  end;
 end;
 //so so with group 2
 for i := 0 to  droplist[mob^.itemgroup2].howmuch do
 begin
  if GetOrNot(droplist[mob^.itemgroup2].group[i].dice) then    //so need nr generator..
  begin
   //got it..
   for s := 0 to thedrop[droplist[mob^.itemgroup2].group[i].wich].howmuch do
   begin
    too:=0;
    if thedrop[droplist[mob^.itemgroup2].group[i].wich].items[s].item = 31 then too:=2;
     for x:= 0 to too do
     if GetOrNot(thedrop[droplist[mob^.itemgroup2].group[i].wich].items[s].dice) then
     begin
      //got item ^^
      Drop(socket,thedrop[droplist[mob^.itemgroup2].group[i].wich].items[s].item,mob^.Packet.x,mob^.Packet.y,thedrop[droplist[mob^.itemgroup2].group[i].wich].items[s].prefix);
      yesdrop:=yesdrop+1;
     end;
   end;
  end;
 end;
if yesdrop=0 then MobDrop(socket,mob);
end;

procedure StartSystem;
var i,s,l:integer;
    fil:file;
begin
 for i := 0 to 1048 do
 begin
  //cehck if file here..
  if FileExists('Config/DROPLIST['+inttostr(i)+'].db') then
  begin
   s:=0;
   assignfile(fil,'Config/DROPLIST['+inttostr(i)+'].db');
   reset(fil,1);
   repeat
    blockread(fil,toread,sizeof(toread),l);
    //load it..
    if l > 0 then
    begin
     droplist[i].group[s].dice:=toread.dice;
     droplist[i].group[s].wich:=toread.wich;
     s:=s+1; //yeah increase ^^
    end;
   until l=0;
   //set max..
   droplist[i].Howmuch:=s-1; //yeah ^^
  end;
 // closefile(fil);
 end;
 //now load drop self..
 for i := 0 to 2139 do
 begin
  //cehck if file here..
  if FileExists('Config/DROP['+inttostr(i)+'].db') then
  begin
   s:=0;
   assignfile(fil,'Config/DROP['+inttostr(i)+'].db');
   reset(fil,1);
   repeat
    blockread(fil,toread2,sizeof(toread2),l);
    //load it..
    if l > 0 then
    begin
     thedrop[i].items[s].dice:=toread2.dice;
     thedrop[i].items[s].item:=toread2.item;
     thedrop[i].items[s].prefix:=toread2.prefix;
     s:=s+1; //yeah increase ^^
    end;
   until l=0;
   //set max..
   thedrop[i].Howmuch:=s-1; //yeah ^^
  end;
 // closefile(fil);
 end;
 //loaditem states..whatitem
 assignfile(fil,'Config/item.db');
 reset(fil,1);
 repeat
  blockread(fil,whatitem[1000],sizeof(whatitem[1000]),l);
  //so check wich index -.-
  whatitem[whatitem[1000].index]:=whatitem[1000]; //copy over other -.- ..
 until l = 0;
 closefile(fil);
end;

procedure Drop(socket:tcustomwinsocket;itemname:word;x,y:dword;howmuch:dword);
var
 drop:tDropitem;
 a,b:integeR;
begin
  a:=round(random(10000)/100);
  b:=random(10);
  //this function is for !! MOB drop item !!
  drop.size:=sizeof(drop);
  drop.typ:=54;
  drop.itemname:=itemname;
  it:=(it+1) mod $FFFF; //increse it
  drop.dropID:=it+$FFFF; //yeah some nr -.-
  //set item..
  dro[it].here:=true;
  //so da :P
  drop.x:=round(x+sin(a)*b);
  drop.y:=round(y+cos(a)*b);
  //if howmuch = 0 then howmuch:=1;
  drop.looks:=howmuch; //yeha yeah how much :D
 // socket.SendBuf(drop,drop.size);    //send to near..
  map.Send(socket,drop,drop.size,true,false,x,y);
  dro[it].packet:=drop;
  //set on map
  map.AddDrop(it);
end;

procedure LoadInventory(player:ponline);
var
 i:integer;
begin
//search itemes..
 for i := 0 to 100 do
 begin
  if player^.userfile.chars.Inventory[i].IsHere then
  begin
    //send item..
    player^.socket.SendBuf(player^.userfile.chars.Inventory[i].Packet,   player^.userfile.chars.Inventory[i].Packet.size);
  end;
 end;
end;

procedure AddItem(player:ponline;itemname,toadd:dword);
var
 i:integer;
 add:tadditem;
begin
 //search item..
 for i := 0 to 100 do
 begin
  if player^.userfile.chars.Inventory[i].IsHere then
  begin
   //check if my item..
   if (player^.userfile.chars.Inventory[i].Packet.NAME=itemname) and (whatitem[itemname].plural=1) then
   begin
    //it is ^^ add item..
    player^.userfile.chars.Inventory[i].Packet.howmuch:=player^.userfile.chars.Inventory[i].Packet.howmuch+toadd;
    //send that he have now more.. or less .. :D
    add.size:=sizeof(add);
    add.typ:=9; //9 to add
    add.ID:=i;
    add.howmuch:=player^.userfile.chars.inventory[i].Packet.howmuch; //yeah .. yeah rox :P
    //send it..
    player^.socket.SendBuf(add,add.size);
    exit; //exit procedure..
   end;
  end;
 end;
//not found add new ^^
for i := 0 to 100 do
 begin
  if not player^.userfile.chars.Inventory[i].IsHere then
  begin
   //add my item..
   player^.userfile.chars.Inventory[i].IsHere:=true; //now right :P
   player^.userfile.chars.Inventory[i].Packet.size:=sizeof(player^.userfile.chars.Inventory[i].Packet);
   player^.userfile.chars.Inventory[i].Packet.typ:=7; //7 = make new..
   player^.userfile.chars.Inventory[i].Packet.ID:=i;
   player^.userfile.chars.Inventory[i].Packet.NAME:=itemname;
   if whatitem[itemname].plural=1 then
    player^.userfile.chars.Inventory[i].Packet.prefix:=0
   else
    player^.userfile.chars.Inventory[i].Packet.prefix:=toadd;
   player^.userfile.chars.Inventory[i].Packet.wear:=false;
   player^.userfile.chars.Inventory[i].Packet.unknow1:=0;
   player^.userfile.chars.Inventory[i].Packet.somethink2:=0;
   player^.userfile.chars.Inventory[i].Packet.somethink3:=0;  //0 = eb .. 1=  ?? no idea..
   if whatitem[itemname].plural=1 then
    player^.userfile.chars.Inventory[i].Packet.howmuch:=toadd
   else
    player^.userfile.chars.Inventory[i].Packet.howmuch:=1;
   player^.userfile.chars.Inventory[i].Packet.maxendurance:=14;
   player^.userfile.chars.Inventory[i].Packet.endurance:=14;
   player^.userfile.chars.Inventory[i].Packet.noramlattack:=0;
   player^.userfile.chars.Inventory[i].Packet.magicattack:=0;
   player^.userfile.chars.Inventory[i].Packet.ontarget:=0;
   player^.userfile.chars.Inventory[i].Packet.evasion:=0;
   player^.userfile.chars.Inventory[i].Packet.b:=0; //no idea..
   player^.userfile.chars.Inventory[i].Packet.eb:=0;
   player^.userfile.chars.Inventory[i].Packet.stones:=0;
   //send that he got new..
   player^.socket.SendBuf(player^.userfile.chars.Inventory[i].Packet,   player^.userfile.chars.Inventory[i].Packet.size);
   exit; //exit function..
  end;
 end;
end;

end.
