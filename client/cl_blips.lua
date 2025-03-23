if Config.BlipsShowall then
    CreateThread(function()
        for _,v in pairs(Config.Locations) do
            if not v.hideBlip then -- Check if the blip should be shown
                local blip = AddBlipForCoord(v.vector)
                SetBlipSprite(blip, v.sprite)
                SetBlipScale(blip, v.scale)
                SetBlipColour(blip, v.color)
                -- SetBlipAsShortRange(blip, true)
                SetBlipAsShortRange(blip, v.shortRange)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(v.label)
                EndTextCommandSetBlipName(blip)
                -- Print
                -- print("Blip added for location: " .. v.text)
            end
        end
    end)
end




--! Old Code We Never Use
--[[
if Config.blipsShow then
    CreateThread(function()
        for _,v in pairs(Config.Locations) do
            if not v.hideBlip then -- Check if the blip should be shown
            local blip = AddBlipForCoord(v.vector)
            SetBlipSprite(blip, v.sprite)
            SetBlipScale(blip, v.scale)
            SetBlipColour(blip, v.color)
            -- SetBlipAsShortRange(blip, true)
            SetBlipAsShortRange(blip, v.ShortRange)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.text)
            EndTextCommandSetBlipName(blip)
            end
        end
    end)
end
]]--