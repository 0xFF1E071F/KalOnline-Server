unit map;

interface
uses header,SysUtils,Types,windows,ScktComp,StrUtils,item;

var MainNode, CurrNode, PrevNode: POnMap;
const raster:integer=1000;
const rastersize:integer=1000; //i am a baka
var onmap:integer;
var ahmastorm:integer=1;
//proceduren.. :P
procedure AddPlayer(ForPlayer:POnline);
procedure DeletePlayer(ForPlayer:POnline);
procedure Chat(size:byte;text:array of char;Player:POnline);
procedure GetAllInNear(Player:POnline);
procedure SendMove(Move:Tmove;player:ponline;mob:pmob;x,y:shortint);
procedure AddNPC(ForNpc:PNPC);
function HowMuchOnMap:integer;
procedure AddMOB(ForMOB:Pmob);
procedure SendAttack(packet:tnormalattack;ForPlayer:POnline);
//procedure ResetMob(m:tmobpacket);
procedure SendSit(yesorno:byte;ForPlayer:POnline);
procedure SendTeleport(Player:POnline;packet:tteleport);
Procedure Send(socket:tcustomwinsocket;var Buf;size:word;myself,toall:boolean;mx,my:integer);
procedure AddDrop(drop_nr:word);
procedure DeleteDrop(drop_nr:word);

implementation

function HowMuchOnMap:integer;
begin
 result:=onmap;
end;

function GetNodeByDropID(dropid:word): POnMap;
begin
 Result := MainNode;
 while Result <> nil do
  begin
   if Result^.WhatForAObject = IsDrop then //check if player -.-
    if Result^.ForDrop = dropid then Break;
    Result := Result^.Next;
  end;
end;

function GetNodeByPOnline(ForPlayer: POnline): POnMap;
begin
 Result := MainNode;
 while Result <> nil do
  begin
   if Result^.WhatForAObject = IsPlayer then //check if player -.-
    if Result^.ForPlayer = ForPlayer then Break;
    Result := Result^.Next;
  end;
end;

procedure DeleteNode(Node: POnMap);
var
 Prev: POnMap;
begin
if node=nil then exit;
  Prev := MainNode;
  if Node = MainNode then
    MainNode := Node^.Next
  else while Prev <> nil do
  begin
   if Prev^.Next = Node then
    begin
      Prev^.Next := Node^.Next;
      Break;
    end;
    Prev := Prev^.Next;
  end;
  Dispose(Node);
  onmap:=onmap-1;
end;

procedure GetAllInNear(Player:POnline);
var
 mx,my,ox,oy:integeR;
 now:ponmap;
begin
 //hm
 mx:=player.userfile.chars.CharX;
 my:=player.userfile.chars.CharY;
 now:=GetNodeByPOnline(Player);
 now.CharX:=mx;
 now.CharY:=my;
 now.CharZ:=player.userfile.chars.CharZ;
 now:=MainNode;
 repeat
  if now.WhatForAObject = IsPlayer then
  begin
   ox:=now.ForPlayer.userfile.chars.CharX;
   oy:=now.ForPlayer.userfile.chars.CharY;
  end;
  if now.WhatForAObject = IsNPC then
  begin
   ox:=now.ForNpc.Packet.x;
   oy:=now.ForNpc.Packet.y;
  end;
  if now.WhatForAObject = IsMob then
  begin
   ox:=now.formob.Packet.x;
   oy:=now.formob.Packet.y;
  end;
  if now.WhatForAObject = IsDrop then
  begin
   ox:=dro[now.ForDrop].packet.x;
   oy:=dro[now.ForDrop].packet.y;
  end;
  if (mx>ox-raster) and (mx<ox+raster) then
   if (my>oy-raster) and (my<oy+raster) then //send char..:P
   begin
    if now.WhatForAObject = IsPlayer then
    begin
     try
      player.socket.SendText(now.ForPlayer.userfile.chars.ShowPlayerPacket);
     except
     end;
    end;
    if now.WhatForAObject = IsNPC then
    begin
     try
      player.socket.SendBuf(now.ForNpc.packet,now.fornpc.packet.size);
     except
     end;
    end;
    if now.WhatForAObject = IsDrop then
    begin
     try
      Player.socket.SendBuf(dro[now.ForDrop].packet,dro[now.ForDrop].packet.size);
     except
     end;
    end;
    if now.WhatForAObject = IsMOB then
    begin
     try
      player.socket.SendBuf(now.ForMOB.packet,now.forMOB.packet.size);
     except
     end;
     now^.ForMob.active:=now^.ForMob.active+1;
    end;
   end;
  now:=now^.Next;
 until now=nil;
end;

Procedure Send(socket:tcustomwinsocket;var Buf;size:word;myself,toall:boolean;mx,my:integer);
var
 now:PonMap;
 ox,oy:integer;
begin
 //Yeah ;) luca you rox :P
 //socket.SendBuf(buf,size);
 now:=MainNode;
 repeat
  //so range check..
  if now.WhatForAObject = IsPlayer then
  begin
  ox:=now.ForPlayer.userfile.chars.CharX;
  oy:=now.ForPlayer.userfile.chars.CharY;
  if not toall then
  begin
   if (mx>ox-raster) and (mx<ox+raster) then
   begin
    if (my>oy-raster) and (my<oy+raster) then //send chat:P
    begin
     try
      if myself then
       now.ForPlayer.socket.SendBuf(Buf,size) //send to me to ^^
      else
       if now.ForPlayer.sockethandle <> socket.Handle then
         now.ForPlayer.socket.SendBuf(Buf,size); //send not to me ;)
     except
     end;
    end;
   end;
  end
  else
  begin
   try
    //to all
    now.ForPlayer.socket.SendBuf(Buf,size); //send to him also when not in range..
   except
   end;
  end;
  end;
  now:=now^.Next;
 until now=nil;
end;

procedure Chat(size:byte;text:array of char;Player:POnline);
var
 stext,mytext:string;
 i,mx,my,ox,oy:integeR;
 now:POnMap;
 drop:TDropItem;
 cya:TNowAway;
begin
//so handle chat..
//so so..
 for i:=0 to size-2 do mytext:=mytext+text[i];
 //filter badwords
 
 mytext:=stringreplace(mytext,'fuck','LOVE',[rfReplaceAll, rfIgnoreCase]);
 stext:=mytext;
 if length(mytext) < 5 then mytext:=mytext+'      ';

 if player^.userfile.gm then
 begin

 if mytext='/fakedrop' then
 begin
  //make a gake drop :P
  drop.size:=sizeof(drop);
  drop.typ:=54;
  drop.itemname:=$1F;
  drop.dropID:=1;
  drop.x:=player.userfile.chars.CharX;
  drop.y:=player.userfile.chars.CharY;
  drop.looks:=random(65535);
  Send(nil,drop,drop.size,true,true,0,0); //send to all :P
  sleep(2000);
  cya.size:=sizeof(cya);
  cya.typ:=59;
  cya.id:=1;
  Send(nil,cya,cya.size,true,true,0,0); //send to all :P
  exit;
 end;
 if LeftStr(mytext, length('/getitem'))='/getitem' then
 begin
  //get item ^^
  AddItem(player,strtoint(RightStr(mytext,length(mytext)-length('/getitem'))),1);
  exit;
 end;
 end;
 if (mytext[1] = '/') and (mytext[2]+mytext[3]+mytext[4] <> 'sa ') then exit;
 //so so..
 stext:=player.userfile.chars.CharName+stext;
 stext:=#1#0#60+stext+#0;
 stext[1]:=chr(length(stext));
 //so set up all
 mx:=player.userfile.chars.CharX;
 my:=player.userfile.chars.CharY;
 //Send(player.socket,stext,length(stext),true,false,mx,my);
 //exit;
 //man..
 now:=MainNode;
 repeat
  //so range check..
  if now.WhatForAObject = IsPlayer then
  begin
  ox:=now.ForPlayer.userfile.chars.CharX;
  oy:=now.ForPlayer.userfile.chars.CharY;
  if mytext[1]+mytext[2]+mytext[3]+mytext[4] <> '/sa ' then
  begin
   if (mx>ox-raster) and (mx<ox+raster) then
   begin
    if (my>oy-raster) and (my<oy+raster) then //send chat:P
    begin
     try
      now.ForPlayer.socket.SendText(stext);
     except
     end;
    end;
   end;
  end
  else
  begin
   try
    now.ForPlayer.socket.SendText(stext); //send to him also when not in range..
   except
   end;
  end;
  end;
  now:=now^.Next;
 until now=nil;
end;

procedure SendMove(Move:Tmove;player:ponline;mob:pmob;x,y:shortint);
var
 mx,my,ox,oy,sx,sy:integeR;
 now:POnMap;
 washere:boolean;
 nowaway:tnowaway;
 t:integeR;
 howm:integeR;
begin
 //hm..
 howm:=0;
  //so set up all     1
  t:=0;
 if mob = nil then
 begin
 sx:=player.userfile.chars.CharX-x;    //old
 sy:=player.userfile.chars.CharY-y;
 mx:=player.userfile.chars.CharX;      //new
 my:=player.userfile.chars.CharY;
 end;
 if player = nil then
 begin
 sx:=mob.Packet.X-x;    //old
 sy:=mob.Packet.Y-y;
 mx:=mob.Packet.X;      //new
 my:=mob.Packet.Y;
 end;
 ox:=sx; //when nothing is here.. :P exit all :P
 oy:=sy;
 if player=nil then
  if mob.active <= 0 then
  begin
   mob.active:=0;
   exit; //no check
  end;
 //if  MapArea[ox div rastersize,oy div rastersize]+MapArea[ox div rastersize+1,oy div rastersize]+MapArea[ox div rastersize-1,oy div rastersize]+MapArea[ox div rastersize,oy div rastersize-1]+MapArea[ox div rastersize+1,oy div rastersize-1]+MapArea[ox div rastersize,oy div rastersize+1]+MapArea[ox div rastersize+1,oy div rastersize+1]+MapArea[ox div rastersize-1,oy div rastersize+1]>0 then exit;
 //man..
 now:=MainNode;
 repeat
  t:=t+1;
  if now.WhatForAObject = isPlayer then
  begin
  //so range check..
  ox:=now.ForPlayer.userfile.chars.CharX;
  oy:=now.ForPlayer.userfile.chars.CharY;
  end;
  if now.WhatForAObject = IsNpc then
  begin
  ox:=now.fornpc.Packet.x;
  oy:=now.fornpc.Packet.y;
   if player=nil then ox:=0;
  end;
  if now.WhatForAObject = IsMob then
  begin
   ox:=now.formob.Packet.x;
   oy:=now.formob.Packet.y;
   if player=nil then ox:=0;
  end;
  if now.WhatForAObject = IsDrop then
  begin
   ox:=dro[now.ForDrop].packet.x;
   oy:=dro[now.ForDrop].packet.y;
   if player=nil then ox:=0;
  end;
  if  ox>0 then
  begin
  //send my move.. :P
  if (mx>ox-raster) and (mx<ox+raster) then
   if (my>oy-raster) and (my<oy+raster) then
   begin
     washere:=false;
     //check apear.. when he wasn't on old..
     if (sx>ox-raster) and (sx<ox+raster) then
      if (sy>oy-raster) and (sy<oy+raster) then
       washere:=true;
     if washere=false then
     begin
      if now.WhatForAObject = isPlayer then
      begin
       if mob = nil then
       begin
        try
         Player.socket.SendText(now.forplayer.userfile.chars.ShowPlayerPacket);
         now.ForPlayer.socket.SendText(player.userfile.chars.ShowPlayerPacket);
        except
        end;
       end;
       if player = nil then
       begin
        try
         now.ForPlayer.socket.SendBuf(mob.packet,mob.packet.size);
        except
        end;
       end;
      end;
      if now.WhatForAObject = isNPC then
      begin
       if mob = nil then
       try
        Player.socket.SendBuf(now.fornpc.packet,now.fornpc.packet.size);
       except
       end;
      end;
      if now.WhatForAObject = isDrop then
      begin
       if mob = nil then
       try
        Player.socket.SendBuf(dro[now.ForDrop].packet,dro[now.ForDrop].packet.size);
       except
       end;
      end;
      if now.WhatForAObject = isMOB then
      begin
       if mob = nil then
       begin
        try
        if now.ForMob.Packet.hp > 0 then //shit mob is dead whe haha
         Player.socket.SendBuf(now.formob.packet,now.formob.packet.size);
        except
        end;
        now.ForMob.active:=now.ForMob.active+1;
       end;
      end;
     end;
     //send move..
     if now.WhatForAObject = isPlayer then
     begin
       if mob = nil then
        if (now.ForPlayer <> Player) then
         try
         now.ForPlayer.socket.SendBuf(move,move.size);
         except
         end;
       if player = nil then
       begin
        try
         now.ForPlayer.socket.SendBuf(move,move.size);
         howm:=howm+1;
        except
         //do nothing -.- shit debugger
        end;
        //check if he go agressive :P
        if sqrt(sqr(mx-ox)+sqr(my-oy)) < mob^.range then
        begin
        if (mob^.aggresive) and (not now^.ForPlayer^.userfile.chars.dead) then
         if not mob^.underattack then
         begin
          mob^.underattack:=true;
          mob^.target:=now^.ForPlayer;
          mob^.lastmove:=0;
          mob^.myattack.opfer:=now^.ForPlayer.userfile.chars.CharId;
          //jap jap they are agressive :P
         end;
        end;
       end
     end;
    end;
   //disaper check..
   if (sx>ox-raster) and (sx<ox+raster) then     //check if it was on old
    if (sy>oy-raster) and (sy<oy+raster) then
    begin
     //check if now not here..
     washere:=false;
     if (mx>ox-raster) and (mx<ox+raster) then     //check if his not not in new
      if (my>oy-raster) and (my<oy+raster) then
       washere:=true;
    if washere=false then
    begin
     if now.WhatForAObject = isPlayer then
     begin
     //send disapear;
      nowaway.size:=sizeof(nowaway);
      nowaway.typ:=55;
      if mob = nil then
      begin
       try
        nowaway.id:=now^.forplayer.socket.Handle;
        player.socket.SendBuf(nowaway,nowaway.size);
        nowaway.id:=player.socket.Handle;
        now.ForPlayer.socket.SendBuf(nowaway,nowaway.size);
       except
       end;
      end;
      if player=nil then
      begin
       try
        nowaway.id:=mob.Packet.id;
        now.ForPlayer.socket.SendBuf(nowaway,nowaway.size);
       except
       end;
      end;
     end;
     if now.WhatForAObject = IsNPC then
     begin
      //
      if mob = nil then
      begin
       nowaway.size:=sizeof(nowaway);
       nowaway.typ:=55;
       nowaway.id:=now.fornpc.packet.id;
      try
      Player.socket.SendBuf(nowaway,nowaway.size);
      except
      end;
      end;
     end;
     if now.WhatForAObject = IsDrop then
     begin
      //
      if mob = nil then
      begin
       nowaway.size:=sizeof(nowaway);
       nowaway.typ:=59;
       nowaway.id:=dro[now.ForDrop].packet.dropID; //Yeah away drop.. :P
      try
      Player.socket.SendBuf(nowaway,nowaway.size);
      except
      end;
      end;
     end;
     if now.WhatForAObject = isMOB then
     begin
      //
      if mob = nil then
      begin
      try
       nowaway.size:=sizeof(nowaway);
       nowaway.typ:=55;
       nowaway.id:=now.formob.packet.id;
       Player.socket.SendBuf(nowaway,nowaway.size);
      except
      end;
       now.ForMob.active:=now.ForMob.active-1;
      end;
     end;
    end;
    end;
   end;
  now:=now^.Next;
 until now=nil;
 //so check if check
 if mob = nil then
 begin
 ox:=sx;
 oy:=sy;
 end;
 if player = nil then
 //so check if mob still active..
 if howm = 0 then
 begin
  //deactive buggy mb !!
  mob^.active:=mob^.active-1;
 end;
// writeln(inttostr(t));
end;

procedure DeletePlayer(ForPlayer:POnline);
var
 now:ponmap;
 ox,oy,mx,my:integer;
 p:ponmap;
 nowaway:tnowaway;
begin
 p:=GetNodeByPOnline(ForPlayer);
 mx:=p.ForPlayer.userfile.chars.CharX;
 my:=p.ForPlayer.userfile.chars.CharY;
 //disable all attack
 //decount acive ;O
 now:=mainnode;
 repeat
  if (now.WhatForAObject = isPlayer) or (now.WhatForAObject = isMob) then
  begin
   //okay..
   if now.WhatForAObject = isPlayer then
   begin
    ox:=now^.ForPlayer.userfile.chars.CharX;
    oy:=now^.ForPlayer.userfile.chars.CharY;
   end;
   if now.WhatForAObject = isMob then
   begin
    ox:=now^.ForMob.Packet.x;
    oy:=now^.ForMob.Packet.y;
   end;
   if (mx>ox-raster) and (mx<ox+raster) then
   if (my>oy-raster) and (my<oy+raster) then //send char..:
   begin
    if now.WhatForAObject = IsPlayer then
    begin
      //send disapear :P
      nowaway.size:=sizeof(nowaway);
      nowaway.typ:=55;
      try
      nowaway.id:=forplayer.socket.Handle;
      except
      end;
      if now^.ForPlayer.userfile.chars.charId <> Forplayer.userfile.chars.charid then
      begin
      try
       now^.ForPlayer.socket.SendBuf(nowaway,nowaway.size);
      except
      end;
      end;
     //now^.ForPlayer.socket.SendText(ForPlayer.userfile.chars.ShowPlayerPacket);
    end;
    if now.WhatForAObject = IsMob then
    begin
     now^.ForMob.active:=now^.ForMob.active-1; //deactive activation :P
     if now^.ForMob.Underattack then
     if now^.ForMob.target^.userfile.chars.CharId = p.ForPlayer.userfile.chars.CharId then
     begin
      //he has me as target.. delete
      now^.ForMob.underattack:=false;
    end;
    end;
   end;
  end;
  now:=now^.Next;
 until now=nil;
 //so deltet from map .. :P
 DeleteNode(p);
end;

procedure AddPlayer(ForPlayer:POnline);
 var
 mx,my,ox,oy:integeR;
 now:ponmap;
begin
//do my stuff..
//add new player..
 New(CurrNode);
 CurrNode^.Next := MainNode;
 MainNode := CurrNode;
 CurrNode^.WhatForAObject:=IsPlayer;
 CurrNode^.ForPlayer:=ForPlayer;
//so added new player on map ..
 //hm
 mx:=ForPlayer.userfile.chars.CharX;
 my:=ForPlayer.userfile.chars.CharY;
 now:=MainNode;
 repeat
  if now.WhatForAObject = IsPlayer then
  begin
   ox:=now.ForPlayer.userfile.chars.CharX;
   oy:=now.ForPlayer.userfile.chars.CharY;
  end;
  if now.WhatForAObject = IsMob then
  begin
   ox:=now.ForMOB.Packet.x;
   oy:=now.ForMOB.Packet.y;
  end;
  if (mx>ox-raster) and (mx<ox+raster) then
   if (my>oy-raster) and (my<oy+raster) then //send char..:
   begin
    if now.WhatForAObject = IsPlayer then
    try
     now^.ForPlayer.socket.SendText(ForPlayer.userfile.chars.ShowPlayerPacket);
    except
    end;
    if now.WhatForAObject = IsMob    then
    try
      now^.ForMob.active:=now^.ForMob.active+1;
    except
    end;
   end;
  now:=now^.Next;
 until now=nil;
 onmap:=onmap+1;
end;

{ procedure ResetMob(m:tmobpacket);
var now:ponmap;
    ox,oy,mx,my:integer;
    nowaway:tnowaway;
begin
 now:=mainnode;
 mx:=m.x;
 my:=m.y;
 repeat
  if now.WhatForAObject = IsPlayer then
  begin
   ox:=now.ForPlayer.userfile.chars.CharX;
   oy:=now.ForPlayer.userfile.chars.CharY;
   if (mx>ox-raster) and (mx<ox+raster) then
   if (my>oy-raster) and (my<oy+raster) then //send char..:
    begin
     //disapear..
      nowaway.size:=sizeof(nowaway);
      nowaway.typ:=55;
      nowaway.id:=m.id;
      try
      now^.ForPlayer.socket.SendBuf(nowaway,nowaway.size);
      //reset
      now^.ForPlayer.socket.SendBuf(m,m.size);
      except
      end;
    end;
  end;
  now:=now^.Next;
 until now=nil;
end; }

procedure SendAttack(packet:tnormalattack;ForPlayer:POnline);
var
 now:ponmap;
 mx,my,ox,oy:integer;
 p:ponline;
 pack:TsetPoints;
 packe:tChangeWhatIdo;
begin
if packet.dmg > ForPlayer.userfile.chars.CharHP then packet.dmg:=ForPlayer.userfile.chars.CharHP;
//check if he die..
  if ForPlayer.userfile.chars.CharHP-packet.dmg = 0 then
  begin
   ForPlayer.userfile.chars.Dead:=true; //save that he is dead :P
   packe.size:=sizeof(pack);
   packe.typ:=61;
   packe.id:=forplayer.userfile.chars.charid;
   packe.whatchange:=9; //=die ;P
   packe.data:=1;
  end;
//Sedn attak
 Send(ForPlayer.socket,packet,packet.size,true,false,ForPlayer.userfile.chars.CharX,ForPlayer.userfile.chars.CharY);
 if ForPlayer.userfile.chars.CharHP-packet.dmg = 0 then
 Send(ForPlayer.socket,packe,packe.size,true,false,ForPlayer.userfile.chars.CharX,ForPlayer.userfile.chars.CharY);
//calcualte..
 if ForPlayer.userfile.chars.CharId = packet.opfer then
 begin
  ForPlayer.userfile.chars.CharHP:=ForPlayer.userfile.chars.CharHP-packet.dmg-packet.exblow;
  //update hp :P
  pack.size:=sizeof(pack);
  pack.typ:=69;
  pack.what:=5; //1=hp :P
  pack.howmuch:=ForPlayer.userfile.chars.CharHP;
  pack.full:=ForPlayer.userfile.chars.CharMAXHP;
  try
   ForPlayer.socket.SendBuf(pack,pack.size);  //send only to him hp ^^
  except
  end;
  //so so :P
 end;
end;

procedure AddNPC(ForNpc:PNPC);
begin
 New(CurrNode);
 CurrNode^.Next := MainNode;
 MainNode := CurrNode;
 CurrNode^.WhatForAObject:=IsNpc;
 CurrNode^.ForNpc:=ForNpc;
 onmap:=onmap+1;
end;

procedure AddDrop(drop_nr:word);
begin
 New(CurrNode);
 CurrNode^.Next := MainNode;
 MainNode := CurrNode;
 CurrNode^.WhatForAObject:=IsDrop;
 CurrNode^.ForDrop:=drop_nr;
 onmap:=onmap+1;
end;

procedure DeleteDrop(drop_nr:word);
begin
 //soss
 DeleteNode(GetNodeByDropID(drop_nr));
end;

procedure AddMOB(ForMOB:Pmob);
begin
 New(CurrNode);
 CurrNode^.Next := MainNode;
 MainNode := CurrNode;
 CurrNode^.WhatForAObject:=IsMob;
 CurrNode^.ForMob:=ForMOB;
 onmap:=onmap+1;
end;

procedure SendTeleport(Player:POnline;packet:tteleport);
var
 mx,my:integer;
 nowaway:tnowaway;
begin
 mx:=Player.userfile.chars.CharX;
 my:=Player.userfile.chars.CharY;
 nowaway.size:=sizeof(nowaway);
 nowaway.typ:=55;
 nowaway.id:=player.userfile.chars.CharId;
// now^.ForPlayer.socket.SendBuf(nowaway,nowaway.size);
 Send(Player.Socket,nowaway,nowaway.size,false,false,mx,my);
 //so set new coordiantes..
 player^.userfile.chars.CharX:=packet.x;
 player^.userfile.chars.CharY:=packet.y;
 player^.userfile.chars.CharZ:=packet.z;
 //teleport me
 try
  player^.socket.SendBuf(packet,packet.size);
 except
 end;
 //sedn that i am here..
 GetAllinNear(player);
end;

procedure SendSit(yesorno:byte;ForPlayer:POnline);
var
 mx,my,ox,oy,s:integer;
 pack:tChangeWhatIdo;
begin
//writeln(inttostr(yesorno)); //for check :P
if ForPlayer.walk then exit;
if (yesorno = 1) and (ForPlayer.sit) then exit; //no sit
if (yesorno = 0) and (not ForPlayer.sit) then exit; //no stand up
//so change in my own data..
s:=3+4+4+4+length(ForPlayer.userfile.chars.CharName)+1+4;//so position +1 = after z :D
if yesorno = 1 then
 ForPlayer.userfile.chars.ShowPlayerPacket[s+3]:=#4
else
 ForPlayer.userfile.chars.ShowPlayerPacket[s+3]:=#0;
//send to all that i sit now :P
pack.size:=sizeof(pack);
pack.typ:=61;
pack.id:=forplayer.userfile.chars.charid;
pack.whatchange:=3; //=sit ;P
pack.data:=yesorno;
if forplayer.run then forplayer.run:=false;
ForPlayer.sit:=not ForPlayer.sit;
//send to all :P
mx:=ForPlayer.userfile.chars.CharX;
my:=ForPlayer.userfile.chars.CharY;
Send(ForPlayer.socket,pack,pack.size,true,false,mx,my);
end;


end.
