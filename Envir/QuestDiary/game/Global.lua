Global = {}

function beforedawn()
    local t = getplayerlst()
    for _,actor in ipairs(t) do
        Global.dailyupdate(actor)
    end
    local openday = grobalinfo(1)
    GameEvent.push(EventCfg.RoBeforedawn, openday)
end

--声明全局变量
function Global.declareVar()
end



-------------------------------网络消息---------------------------------------


--请求打开天天省钱
function Global.RequestOpenTTSQ(actor)
end

-------------------------------逻辑处理---------------------------------------
--每日更新
function Global.dailyupdate(actor, islogin, datas)
    local before_date = lib996:getplaydef(actor, VarCfg.T_daily_date)
    local cur_date = os.date("%Y%m%d") --当前年月日
    if cur_date ~= before_date then
        lib996:setplaydef(actor, VarCfg.T_daily_date, cur_date)  --过了一天更新当前年月日
        GameEvent.push(EventCfg.goDailyUpdate, actor, islogin, datas)
    end
end

-------------------------------事件---------------------------------------
--登录完成
local _login_SyncOpenDay = { 0,120}
local _login_SyncCreateActor = {0, 0}
function Global.LoginEnd(actor, logindatas)
    Global.dailyupdate(actor, true, logindatas)

    --开服天数
    _login_SyncOpenDay[1] = lib996:grobalinfo()
    --背包格子数
    _login_SyncOpenDay[2] = 120
    table.insert(logindatas, _login_SyncOpenDay)

    --创建角色信息
    _login_SyncCreateActor[1] = lib996:getplaydef(actor, VarCfg.U_create_actor_time)

    local openday = lib996:grobalinfo(1)
    local create_actor_openday = lib996:getplaydef(actor, VarCfg.U_create_actor_openday)
    local create_actor_day = openday - create_actor_openday + 1
    _login_SyncCreateActor[2] = create_actor_day
    
    table.insert(logindatas, _login_SyncCreateActor)
end

--每日凌晨
function Global.Beforedawn(actor, beforedawndatas)
    Global.dailyupdate(actor, false, beforedawndatas)

    --开服天数
    _login_SyncOpenDay[1] = lib996:grobalinfo(1)
    table.insert(beforedawndatas, _login_SyncOpenDay)

end

--点击某NPC
function Global.ClickNpcResponse(actor, npcid)
end

--充值触发
function Global.Recharge(actor, gold, productid, moneyid)
end


-------------------------------监听事件---------------------------------------
GameEvent.add(EventCfg.onLoginEnd, Global.LoginEnd, Global, 1)
GameEvent.add(EventCfg.goBeforedawn, Global.Beforedawn, Global, 1)
GameEvent.add(EventCfg.onClicknpc, Global.ClickNpcResponse, Global, 1)
GameEvent.add(EventCfg.onRecharge, Global.Recharge, Global, 1)


return Global