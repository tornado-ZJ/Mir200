
-- QF入口文件 当m2启动时候就会加载
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QManage.lua------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--引擎启动
function startup()
end

--登录
function login(actor)
end

--行会初始化
function loadguild(actor) --玩家actor
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QFunction.lua----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




--跑步
function run(actor)

end


--走路
function walk(actor)

end


--小退
function playoffline(actor)

end


--属性变化
function sendability(actor)

end


--NPC点击触发
function clicknpc(actor, npcid)
end

--每天第一次登录
function setday(actor)

end


--聊天
--sMsg      聊天内容
--chat      聊天频道（1;系统 2;喊话 3;私聊 4;行会 5;组队 6;附近 7;世界）
--返回 true 发送聊天信息失败
function triggerchat(actor, sMsg, chat)
end


--监听
function handlerequest(actor, msgid, arg1, arg2, arg3, sMsg)

end


--物品进背包
function addbag(actor, itemobj)

end


--升级
function playlevelup(actor)

end


--人物死亡之前
function nextdie(actor)

end


--人物死亡
--hiter     杀人者对象
function playdie(actor, hiter)

end


--人物复活
function revival(actor)

end


--任意地图杀死怪物
function killmon(actor, monobj)

end


--人物小退触发
function playreconnection(actor)

end

--人物大退与关闭客户端触发
function playoffline(actor)

end


--充值
--gold  充值rmb金额
--productid  商品ID(前端调起充值时候传递的参数) --无用参数可忽略
--moneyid  充值获得货币ID
function recharge(actor, gold, productid, moneyid)
end

--攻击前
--Target	object	受击对象
--Hiter	    object	攻击对象
--MagicId	int	    技能ID
--Damage	int	    伤害
--result	int	    返回值，修改后的伤害
function attackdamage(actor, Target, Hiter, MagicId, Damage)
    return Damage
end


--攻城开始触发
function castlewarstart()

end


--攻城结束触发
function castlewarend()

end


--占领沙巴克触发
function getcastle0()

end


--玩家改名后
function changehumnameok(actor)

end

--刷怪通知
function makemonnotice(mon)

end


local money = {
    jb                  = 1,    --金币
    yb                  = 2,    --元宝
    bdjb                = 3,    --绑定金币
    bdyb                = 4,    --绑定元宝
    jgs                 = 5,    --金刚石
    jy                  = 6,    --经验
    lf                  = 7,    --灵符
    bdlf                = 8,    --绑定灵符
}

--货币改变触发
for _,moneyidx in pairs(money) do
    _G["moneychange"..moneyidx] = function (actor)
        local curnum = lib996:querymoney(actor, moneyidx)
        local name = lib996:getstditeminfo(moneyidx, 1)
    end
end



--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------RobotManage.lua--------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function beforedawn()
    -- local t = lib996:getplayerlst()
    -- for _,actor in ipairs(t) do
    --     local beforedawndatas = {}
    --     GameEvent.push(EventCfg.onBeforedawn, actor, beforedawndatas)
    -- end
    -- local openday = lib996:grobalinfo(1)
    -- GameEvent.push(EventCfg.roBeforedawn, nil, openday)
end




--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
----------------------------------------定时器-----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--练功师伤害
function ontimer1(actor)
    
end