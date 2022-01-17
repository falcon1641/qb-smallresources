
CreateThread(function()
    while true do
        -- This is the Application ID (Replace this with you own)
	SetDiscordAppId(not here for obvious reasons)

        -- Here you will have to put the image name for the "large" icon.
	SetDiscordRichPresenceAsset('freshstart3')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('FSRP Join Us Today!')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('freshstart3')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('FSRP')

        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('Players: '..result..'/64')
        end)

        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Connect!", "fivem://connect/cfx.re/join/vodj6r")
        SetDiscordRichPresenceAction(1, "Discord!", "https://discord.gg/XqCm6fAY3A")

        -- It updates every minute just in case.
	Wait(60000)
    end
end)

