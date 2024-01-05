-- Variables declarations
local _, LocalizationTable = ...;

-- Slash commands
SLASH_PICKPOCKET1, SLASH_PICKPOCKET2 = '/pp', '/pickpocket'
function SlashCmdList.PICKPOCKET(msg, editbox)
    if msg == "hello" then
        print(LocalizationTable.LOCSTRING_HELLO_WORLD)
    elseif msg == "status" then
        print(LocalizationTable.LOCSTRING_TOTAL_COINS_PIKPOCKETED)
    else
--        openOptionsWindow()
    end
end

-- Event frame creation
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
EventFrame:RegisterEvent("LOOT_READY")
