-- Variables declarations
local _, LocalizationTable = ...;

-- Slash commands
SLASH_PICKPOCKET1, SLASH_PICKPOCKET2 = '/pp', '/pickpocket'
function SlashCmdList.PICKPOCKET(msg, editbox)
    if msg == "hello" then
        print(LocalizationTable.LOCSTRING_HELLOWORLD);
    elseif msg == "status" then
        print(LocalizationTable.LOCSTRING_TOTALCOINSPIKPOCKETED);
    else
--        openOptionsWindow()
    end
end

-- Event frame creation
local PickPocketFrame = CreateFrame("Frame", "EventFrame")
PickPocketFrame:RegisterEvent("PLAYER_LOGIN")

PickPocketFrame:SetScript("OnEvent", function(this, event, ...)
    if event == "PLAYER_LOGIN" then
        InitializeVariables()
        PickPocketGlobalVariables.NumberofLoads = PickPocketGlobalVariables.NumberofLoads + 1
        PickPocketCharacterVariables.NumberofLoads = PickPocketCharacterVariables.NumberofLoads + 1
        print(LocalizationTable.LOCSTRING_NUMBEROFLOADS.." "..PickPocketGlobalVariables.NumberofLoads)
        print(LocalizationTable.LOCSTRING_NUMBEROFLOADSPERCHARACTER.." "..PickPocketCharacterVariables.NumberofLoads)
    end
end)

-- Functions
function InitializeVariables()
    if not PickPocketGlobalVariables then
        PickPocketGlobalVariables = {
            NumberofLoads = 0
        }
        print(LocalizationTable.LOCSTRING_VARIABLEINITIALIZED.." PickPocketGlobalVariables")
    end
    if not PickPocketCharacterVariables then
        PickPocketCharacterVariables = {
            NumberofLoads = 0
        }
        print(LocalizationTable.LOCSTRING_VARIABLEINITIALIZED.." PickPocketCharacterVariables")
    end
end