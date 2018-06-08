-----------------------------------------
-- ID: 5544
-- Item: Crab Stewpot
-- Food Effect: 3 Hrs, All Races
-----------------------------------------
-- TODO: Group Effect
-- HP +10% Cap 50
-- MP +10
-- HP Recoverd while healing 5
-- MP Recovered while healing 1
-- Defense +20% Cap 50
-- Evasion +5
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,10800,5544);
end;

function onEffectGain(target, effect)
    target:addMod(dsp.mod.FOOD_HPP, 10);
    target:addMod(dsp.mod.FOOD_HP_CAP, 50);
    target:addMod(dsp.mod.MP, 10);
    target:addMod(dsp.mod.HPHEAL, 5);
    target:addMod(dsp.mod.MPHEAL, 1);
    target:addMod(dsp.mod.FOOD_DEFP, 20);
    target:addMod(dsp.mod.FOOD_DEF_CAP, 50);
    target:addMod(dsp.mod.EVA, 5);
end;

function onEffectLose(target, effect)
    target:delMod(dsp.mod.FOOD_HPP, 10);
    target:delMod(dsp.mod.FOOD_HP_CAP, 50);
    target:delMod(dsp.mod.MP, 10);
    target:delMod(dsp.mod.HPHEAL, 5);
    target:delMod(dsp.mod.MPHEAL, 1);
    target:delMod(dsp.mod.FOOD_DEFP, 20);
    target:delMod(dsp.mod.FOOD_DEF_CAP, 50);
    target:delMod(dsp.mod.EVA, 5);
end;
