-----------------------------------
-- Area: Northern San d'Oria
--   NPC: Jovial Rat
-- Type: Past Event Watcher
-- @zone 32
-- !pos
--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(4);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

