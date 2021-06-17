local function Vhhhhh_Black(msg)
local text = msg.content_.text_
if redis:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
if text and text:match("^وضع توحيد (.*)$") and Owner(msg) and redis:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local teh = text:match("^وضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'⌔︙تم تعيين '..teh..' كتوحيد للمجموعه')
redis:set(bot_id.."VINESFile:teh"..msg.chat_id_,teh)
end
if text and text:match("^تعين عدد الكتم (.*)$") and Owner(msg) and redis:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local nump = text:match("^تعين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'⌔︙تم تعين  '..nump..' عدد الكتم')
redis:set(bot_id.."VINESFile:nump"..msg.chat_id_,nump)
end
if text == "التوحيد" then
local s1 = redis:get(bot_id.."VINESFile:teh"..msg.chat_id_) or "لا يوجد توحيد"
local s2 = redis:get(bot_id.."VINESFile:nump"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'⌔︙التوحيد هو '..s1..'\n ⌔︙ عدد الكتم هو : '..s2)
end
end
if text == "تفعيل التوحيد" and Constructor(msg) then
send(msg.chat_id_, msg.id_, '⌔︙تم تفعيل التوحيد')
redis:set(bot_id.."kt:twh:stats"..msg.chat_id_,"open")
end
if text == "تعطيل التوحيد" and Constructor(msg) then
send(msg.chat_id_, msg.id_, '⌔︙تم تعطيل التوحيد')
redis:set(bot_id.."kt:twh:stats"..msg.chat_id_,"close")
end
if not Constructor(msg) then
if redis:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open"  and redis:get(bot_id.."VINESFile:teh"..msg.chat_id_) then 
id = msg.sender_user_id_
function keko_tsahke_new(tshake1,tshake2)
if tshake2 and tshake2.first_name_ then 
if tshake2.first_name_:match("(.*)"..redis:get(bot_id.."VINESFile:teh"..msg.chat_id_).."(.*)") then 
redis:srem(bot_id.."VINESFile:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else
local tshake_nnn = redis:get(bot_id.."VINESFile:nump"..msg.chat_id_) or 5
local tshake_nnn2 = redis:get(bot_id.."VINESFile:nump22"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(tshake_nnn2) == tonumber(tshake_nnn) or tonumber(tshake_nnn2) > tonumber(tshake_nnn)) then 
redis:sadd(bot_id.."VINESFile:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else 
redis:incrby(bot_id.."VINESFile:nump22"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "⌔︙عزيزي >>["..tshake2.username_.."](https://t.me/"..(tshake2.username_ or "tshaketeam")..")\n⌔︙عليك وضع التوحيد ~⪼ {`"..redis:get(bot_id.."VINESFile:teh"..msg.chat_id_).."`} بجانب اسمك\n⌔︙عدد المحاولات المتبقيه {"..(tonumber(tshake_nnn) - tonumber(tshake_nnn2)).."}")
end
end
end
end
getUser(id, keko_tsahke_new)
end
end
end
return {
VINESFile = Vhhhhh_Black,
}
