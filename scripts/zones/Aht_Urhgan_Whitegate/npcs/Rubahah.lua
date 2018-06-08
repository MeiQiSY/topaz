-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Rubahah
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/shop");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local stock =
    {
        629,  48, -- Millioncorn
        2237, 60, -- Imperial Flour (available only if AC is in the Al Zahbi)
        2214, 68, -- Imperial Rice (available only if AC is in the Al Zahbi)
        2271, 316 -- Coffee Beans (available only if AC is in the Al Zahbi)
    }
    dsp.shop.general(player, stock);
    player:showText(npc,RUBAHAH_SHOP_DIALOG);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;