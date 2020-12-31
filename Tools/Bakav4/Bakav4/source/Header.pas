unit Header;

interface

uses Types,ScktComp;

type Tpacketheade=record
 size:word;
 typ:byte;
end;

type Tdatapacket=record
 data:array[0..65535] of char;
end;

type TAddItem=packed record
 size:word;
 typ :byte; // = 9
 ID:dword;  //item id ;)
 howmuch:dword;
end;

type Tinvpacket=packed record
 size:word;
 typ :byte; // = 7
 ID:dword;
 NAME:word;
 prefix:byte;
 wear:boolean;
 unknow1:byte;
 somethink2:byte;
 somethink3:byte;
 howmuch:dword;
 maxendurance:byte;
 endurance:byte;
 noramlattack:word;
 magicattack:word;
 ontarget:byte;
 evasion:byte;
 b:byte;
 eb:byte;
 stones:byte;
end;

type TInventory=record
 //and other stuff..
 IsHere:boolean;
 Packet:tinvpacket;
end;

type TChangeCamera=packed record
 size:word;
 typ:byte;
 map:word;
 x:dword;
 y:dword;
end;


//chars..
type
 Pchars = ^TChars;
 TChars=record
// UNKNOW:array[1..5] of char;
// HowMuchChars:byte;
 CharId   :dword;
 CharName :string[20];
 CharClass:byte;
 CharLvl  :byte;
 UNKNOWE  :array[1..4] of char;
 CharSte  :byte;
 CharHlt  :byte;
 CharInt  :byte;
 CharWis  :byte;
 CharAgi  :byte;
 CharFace :byte;
 CharHair :byte;
 CharX,CharY,CharZ:int64;
 CharMaxHP:dword;
 CharMaxMP:dword;
 CharHP   :dword;
 CharMP   :dword;
 CharEXP  :dword;
 NeedExp  :dword;
 AddEXP   :Double;
 Inventory:array[0..100] of Tinventory;
 ShowPlayerPacket:string[200];
 dead:boolean;
 reviveX :dword;
 reviveY :dword;
 reviveZ :dword;
 StatePoints:dword;
 SkillPoints:dword;
end;

//user acc
type Tuserfile=record
 username:string[20];
 password:string[20];
 HowMuchChars:byte;
 chars:Tchars;
 char:PChars;
 gm:boolean;
end;

type
  POnline = ^TOnline;
  TOnline = record
   Next: POnline;
   socket: tcustomwinsocket;
   userfile: tuserfile;
   OnMap,sit,walk,run:boolean;
   nattack_min:word;
   nattack_max:word;
   mattack_min:word;
   mattack_max:word;
   sockethandle:dword;
end;

type TMove = packed record
 size:word;
 typ:byte;
 id:dword;
 x:shortint;
 y:shortint;
 z:shortint;
end;

type
 Tmobpacket = packed record
  size:word;
  typ:byte; //51
  mobtyp:word;
  id:dword;
  x:dword;
  y:dword;
  look_x:shortint;
  look_y:shortint;
  hp:dword;
  max_hp:dword;
  somestuff:string[16];
end;

type
 tareaattack = packed record
 {	WORD effect;
	DWORD attacker;
	DWORD victim;
	WORD damage;
	WORD exblow;}
 size:word;
 typ:byte;
 effect:word;
 attacker:dword;
 opfer:dword; //<- is waht ?
 damage:word;
 exblow:word;
end;

type
 tnormalattack = packed record
  size:word;
  typ:byte;
  attacker:dword;
  opfer:dword;
  dmg:word;
  exblow:word;
  somethink:byte;
end;

type
 tskillattack = packed record
  size:word;
  typ:byte;
  attack_typ:byte;
  attacker:dword;
  opfer:dword;
  skill:byte;
  unknow:byte;
  dmg:word;
  exblow:word;
  unknow2:byte;
 end;

type
 Pmob=^Tmob;
 tmob= record
  Next:Pmob;
  Packet:tmobpacket;
  real_x:dword;
  real_y:dword;
  respawn:dword;
  exp:dword;
  lvl:byte;
  lastmove:integer;
  underattack:boolean;
  target:POnline;
  myattack:tnormalattack;
  active:dword;
  last_reset:dword;
  aggresive:boolean;
  range:word;
  itemgroup1:word;
  itemgroup2:word;
end;

//npc
type
 Tnpcpacket = packed record
  size:word;
  typ:byte; //52
  id:dword;
  npc_typ:word;
  somebyte:byte;
  x:dword;
  y:dword;
  z:dword;
  look_x:shortint;
  look_y:shortint;
  somestuff:string[8];
end;

type
 Pnpc=^Tnpc;
 tnpc= record
  Next:Pnpc;
  Packet:tnpcpacket;
end;

type
 POnMap=^TOnMap;
 TOnMap=record
  Next:POnMap;
  WhatForAObject:byte; //0=player 1=npc 2=mob
  ForPlayer:POnline;
  ForMob:PMob;
  ForNpc:PNpc;
  ForDrop:word;
  CharX,CharY,CharZ:int64;
end;

type
 tteleport=packed record
  size:word;
  typ:byte;
  somethink:byte;
  x:dword;
  y:dword;
  z:dword;
end;

type TNowAway = packed record
 size:word;
 typ:byte;
 id:dword;
end;

type TSetPoints = packed record
 size:word;
 typ:byte;
 what:byte;
 howmuch:word;
 full:int64;
end;

type TSetEXP = packed record
 size:word;
 typ:byte;
 what:byte;
 full:longword; //exp packet...
 somethink:array[0..36] of char;
end;

type TNOWMAX = packed record
 size:word;
 typ:byte;
 what:byte;
 s:byte;
 now:word;
 max:word;
 somethink:Longword;
end;

type TChangeWhatIdo = packed record
 size:word;
 typ:byte;
 id:dword;
 whatchange:byte;
 data:dword;
end;

type TDropItem = packed record
 size:word;
 typ:byte; //= 26
 itemname:word;
 dropID:dword;
 x:dword;
 y:dword;
 looks:dword;
end;

type
 tdrop=record
  here:boolean;
  packet:tDropItem;
end;

type tshoweffect= packed record
  size:word;
  typ:byte;
  id:dword;
  effect:byte;
end;

var dro:array[0..$FFFF] of tdrop;

const IsPlayer:byte=0;
      IsNpc   :byte=1;
      IsMob   :byte=2;
      IsDrop  :byte=3;
      
function DWordToString(mydword:dword):string;
procedure AllZero;

var active:POnline;

implementation


function DWordToString(mydword:dword):string;
begin
 result:=chr(Byte(mydword));
 result:=result+chr(Byte(mydword shr 8));
 result:=result+chr(Byte(mydword shr 16));
 result:=result+chr(Byte(mydword shr 24));
end;

procedure AllZero;
var
 pack:tnowmax;
 lvl:tsetpoints;
begin

 lvl.size:=sizeof(lvl);
 lvl.typ:=69;
 lvl.what:=$1A;
 lvl.howmuch:=active^.userfile.chars.CharLvl; //set lvl ;D
 active^.socket.SendBuf(lvl,lvl.size);
 lvl.what:=$17;
 lvl.howmuch:=active^.userfile.chars.statepoints;  //set statepoints
 active^.socket.SendBuf(lvl,lvl.size); //send it..
 lvl.what:=$17+1; //maybe skillspoints..
 lvl.howmuch:=active^.userfile.chars.skillpoints;  //set skill points
 active^.socket.SendBuf(lvl,lvl.size); //send skillpoints it..

 active.userfile.chars.CharMaxHP:=round((52-10+active.userfile.chars.CharHlt+(active^.userfile.chars.CharSte/2))*active.userfile.chars.CharLvl/3+166);
 if active.userfile.chars.CharHP > active.userfile.chars.CharMaxHP then active.userfile.chars.CharHP:=active.userfile.chars.CharMaxHP;
 active.userfile.chars.CharMaxMP:=round((36+active.userfile.chars.CharWIS)*active.userfile.chars.CharLvl/2+55);
 if active.userfile.chars.CharMP > active.userfile.chars.CharMaxMP then active.userfile.chars.CharMP:=active.userfile.chars.CharMaxMP;

 pack.size:=sizeof(pack);
 pack.typ:=69;

 pack.what:=0; //0=str :P
 pack.now:=0;
 pack.max:=0;
 pack.s:=active^.userfile.chars.CharSte;  //skill points ;D
 pack.somethink:=0;  //resictens
 active^.socket.SendBuf(pack,pack.size); //send..

 pack.what:=1;                //hlt
 pack.now:=active^.userfile.chars.CharHP;
 pack.max:=active^.userfile.chars.CharMaxHP;
 pack.s:=active^.userfile.chars.CharHlt;
 active^.socket.SendBuf(pack,pack.size); //send..

 pack.what:=2;   //int
 pack.now:=round(0+active^.userfile.chars.CharInt/3);                          //attack
 pack.max:=round(0+active^.userfile.chars.CharInt/2.8);
 pack.s:=active^.userfile.chars.CharInt;
 active^.socket.SendBuf(pack,pack.size); //send..

 pack.what:=3; //wis
 pack.now:=active^.userfile.chars.CharMP;
 pack.max:=active^.userfile.chars.CharmaxMP;
 pack.s:=active^.userfile.chars.CharWis;
 active^.socket.SendBuf(pack,pack.size); //send..

 pack.what:=4; //agi
 pack.now:=round(15+(active^.userfile.chars.CharAgi / 2)-10);
 pack.max:=round(3+(active^.userfile.chars.CharAgi*active^.userfile.chars.CharLvl/3)); //evasion
 pack.s:=active^.userfile.chars.CharAgi;
 active^.socket.SendBuf(pack,pack.size); //send..

 //set points..
 lvl.what:=11;  //min attack
 active^.nattack_min:=round(3+(active^.userfile.chars.CharSte/2)+(active^.userfile.chars.CharAgi/4));
 lvl.howmuch:=active^.nattack_min;
 active^.socket.SendBuf(lvl,lvl.size);

 lvl.what:=12;  //max attack
 active^.nattack_max:=round(10+(active^.userfile.chars.CharSte/2)+(active^.userfile.chars.CharAgi/4));
 lvl.howmuch:=active^.nattack_max;
 active^.socket.SendBuf(lvl,lvl.size);
end;

end.
