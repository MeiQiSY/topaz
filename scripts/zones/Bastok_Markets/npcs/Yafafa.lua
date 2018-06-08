-----------------------------------
-- Area: Bastok Markets
--  NPC: Yafafa
-- Only sells when Bastok controls Kolshushu
--
-- Updated Aug-09-2013 by Zerahn, based on bgwiki and gamerescape
-----------------------------------
require("scripts/globals/shop");
require("scripts/globals/conquest");
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Bastok_Markets/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local RegionOwner = GetRegionOwner(dsp.region.KOLSHUSHU);

    if (RegionOwner ~= dsp.nation.BASTOK) then
        player:showText(npc,YAFAFA_CLOSED_DIALOG);
    else
        player:showText(npc,YAFAFA_OPEN_DIALOG);

        local stock =
        {
            0x1197, 184,     --Buburimu Grape
            0x0460,1620,     --Casablanca
            0x1107, 220,     --Dhalmel Meat
            0x0266,  72,     --Mhaura Garlic
            0x115d,  40      --Yagudo Cherry
        }
        dsp.shop.general(player, stock, BASTOK);

    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
