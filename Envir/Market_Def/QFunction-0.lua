
-- QF����ļ� ��m2����ʱ��ͻ����
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QManage.lua------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--��������
function startup()
end

--��¼
function login(actor)
end

--�л��ʼ��
function loadguild(actor) --���actor
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QFunction.lua----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




--�ܲ�
function run(actor)

end


--��·
function walk(actor)

end


--С��
function playoffline(actor)

end


--���Ա仯
function sendability(actor)

end


--NPC�������
function clicknpc(actor, npcid)
end

--ÿ���һ�ε�¼
function setday(actor)

end


--����
--sMsg      ��������
--chat      ����Ƶ����1;ϵͳ 2;���� 3;˽�� 4;�л� 5;��� 6;���� 7;���磩
--���� true ����������Ϣʧ��
function triggerchat(actor, sMsg, chat)
end


--����
function handlerequest(actor, msgid, arg1, arg2, arg3, sMsg)

end


--��Ʒ������
function addbag(actor, itemobj)

end


--����
function playlevelup(actor)

end


--��������֮ǰ
function nextdie(actor)

end


--��������
--hiter     ɱ���߶���
function playdie(actor, hiter)

end


--���︴��
function revival(actor)

end


--�����ͼɱ������
function killmon(actor, monobj)

end


--����С�˴���
function playreconnection(actor)

end

--���������رտͻ��˴���
function playoffline(actor)

end


--��ֵ
--gold  ��ֵrmb���
--productid  ��ƷID(ǰ�˵����ֵʱ�򴫵ݵĲ���) --���ò����ɺ���
--moneyid  ��ֵ��û���ID
function recharge(actor, gold, productid, moneyid)
end

--����ǰ
--Target	object	�ܻ�����
--Hiter	    object	��������
--MagicId	int	    ����ID
--Damage	int	    �˺�
--result	int	    ����ֵ���޸ĺ���˺�
function attackdamage(actor, Target, Hiter, MagicId, Damage)
    return Damage
end


--���ǿ�ʼ����
function castlewarstart()

end


--���ǽ�������
function castlewarend()

end


--ռ��ɳ�Ϳ˴���
function getcastle0()

end


--��Ҹ�����
function changehumnameok(actor)

end

--ˢ��֪ͨ
function makemonnotice(mon)

end


local money = {
    jb                  = 1,    --���
    yb                  = 2,    --Ԫ��
    bdjb                = 3,    --�󶨽��
    bdyb                = 4,    --��Ԫ��
    jgs                 = 5,    --���ʯ
    jy                  = 6,    --����
    lf                  = 7,    --���
    bdlf                = 8,    --�����
}

--���Ҹı䴥��
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
----------------------------------------��ʱ��-----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--����ʦ�˺�
function ontimer1(actor)
    
end