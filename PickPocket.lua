-- Variables declarations
local L = ...;

-- Slash commands
SLASH_PICKPOCKET1, SLASH_PICKPOCKET2 = '/pp', '/pickpocket'
function SlashCmdList.PICKPOCKET(msg, editbox)
    if msg == "hello" then
        print(L["HELLO_WORLD"])
    elseif msg == "status" then
        print(L["TOTAL_COINS_PIKPOCKETED"])
    else
--        openOptionsWindow()
    end
end

-- Event frame creation
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
EventFrame:RegisterEvent("LOOT_READY")
