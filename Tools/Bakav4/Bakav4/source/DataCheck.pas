unit DataCheck;
{$APPTYPE CONSOLE}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, ScktComp, ExtCtrls,user,header,map,item;

procedure CheckData(socket:tcustomwinsocket);

implementation

type
 apacket=packed record
  attack_typ:byte;
  whoisattacked:dword;
end;

type
 tpick=packed record
  id:dword;
end;

var
 Datapacket:TDataPacket;
 pick:tpick;
 attack:apacket;
 msize:word;
 mheader:Tpacketheade;

procedure SendHI(socket:tcustomwinsocket);
var t:string;
begin
//yeha yeha the welcome.. :P
 t:=#0#0#60+'Baka Bug'+#0+'*Welcome on my KalServer4 [UW]'+#0;
 t[1]:=chr(length(t));
 socket.SendText(t);
 t:=#0#0#60+'Baka Bug'+#0+'*Special thanks to...'+#0;
 t[1]:=chr(length(t));
 socket.SendText(t);
 t:=#0#0#60+'Baka Bug'+#0+'* -> KalCore32 5andr0 At Chris Bart Tobi X-Pecta'+#0;
 t[1]:=chr(length(t));
 socket.SendText(t);
 t:=#0#0#60+'Baka Bug'+#0+'* -> and all other guys who was on KalServer2 BETA'+#0;
 t[1]:=chr(length(t));
 socket.SendText(t);
 t:=#0#0#60+'Baka Bug'+#0+'*-------------------------------------------------THIS WAS AN AUTO TEXT'+#0;
 t[1]:=chr(length(t));
 socket.SendText(t);
end;

procedure WorkOnPacket(socket:tcustomwinsocket);
begin
 SetActivePlayer(socket);
 //no multi using so possible without sending data..
 case mHeader.typ of
  8: Socket.SendText(#4#0#$2a#0); //welcome packet
  2: User.Login(Socket,datapacket.data,msize);
  4: User.NewChar(Socket,datapacket.data,msize);
  7: User.DelChar(Socket);
 10: User.LoadToMap(Socket);
 11: SendHi(socket);
 89: Map.GetAllInNear(GetName);
 19: socket.Close;
 27: socket.Close;
 20: CharChangePosition(ord(datapacket.data[0]),ord(datapacket.data[1]),ord(datapacket.data[2]),true);
 21: CharChangePosition(ord(datapacket.data[0]),ord(datapacket.data[1]),ord(datapacket.data[2]),false);
 17: Chat(msize-3,datapacket.data,GetName);
 15: user.Attack(attack.whoisattacked);
 31: Map.SendSit(ord(datapacket.data[0]),GEtName);
 37: User.Revive;
 30: User.GivePoints(ord(datapacket.data[0]));
 32: item.pickup(pick.id);
 end;
end;

procedure CheckData(socket:tcustomwinsocket);
begin
//repeat
//got stuff...so get size..
socket.ReceiveBuf(mheader,3);
msize:=mheader.size;
//so got it get data..
repeat
 Application.ProcessMessages;
until Socket.ReceiveLength >= msize-3;

case mheader.typ of
 15:socket.ReceiveBuf(attack,msize-3);
 32:socket.ReceiveBuf(pick,msize-3);
else
 socket.ReceiveBuf(datapacket,msize-3);
end;
writeln('GOT SIZE:'+inttostr(msize)+' TYP:'+inttostr(mHeader.typ));
//check data
WorkOnPacket(socket);
//until socket.ReceiveLength = 0;
end;

end.
