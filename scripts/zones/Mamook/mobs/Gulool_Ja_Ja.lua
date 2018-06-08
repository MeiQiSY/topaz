-----------------------------------
-- Area: Mamook
--  MOB: Gulool Ja Ja
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Mamook/MobIDs");
mixins = {require("scripts/mixins/job_special")};

-----------------------------------

function onMobSpawn(mob)
    mob:setMod(dsp.mod.DOUBLE_ATTACK, 20);
    mob:setMobMod(dsp.mobMod.DRAW_IN, 2);
end;

function onMobEngaged(mob,target)
    for i = GULOOL_JA_JA + 1, GULOOL_JA_JA + 4 do
        SpawnMob(i):updateEnmity(target);
    end
end;

function onMobFight(mob, target)

    if (mob:getBattleTime() % 15 < 2 and mob:getBattleTime() > 10) then
        if (not GetMobByID(GULOOL_JA_JA + 1):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 1):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 1):updateEnmity(target);
        elseif (not GetMobByID(GULOOL_JA_JA + 2):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 2):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 2):updateEnmity(target);
        elseif (not GetMobByID(GULOOL_JA_JA + 3):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 3):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 3):updateEnmity(target);
        elseif (not GetMobByID(GULOOL_JA_JA + 4):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 4):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 4):updateEnmity(target);
        end
    end
    for i = GULOOL_JA_JA + 1, GULOOL_JA_JA + 4 do
        local pet = GetMobByID(i);
        if (pet:getCurrentAction() == dsp.act.ROAMING) then
            pet:updateEnmity(target);
        end
    end
end;

function onMobDisengage(mob)
    for i = 1,4 do DespawnMob(GULOOL_JA_JA + i) end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(dsp.title.SHINING_SCALE_RIFLER);
    for i = 1,4 do DespawnMob(GULOOL_JA_JA + i) end
end;

function onMobDespawn(mob)
    for i = 1,4 do DespawnMob(GULOOL_JA_JA + i) end
end;
