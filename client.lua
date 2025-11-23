CreateThread(function()
    for stashId, stash in pairs(Config.Stashes) do

        if Config.UseTarget then
            ------------------------------------------
            -- TARGET MODE
            ------------------------------------------
            exports.ox_target:addSphereZone({
                coords = stash.coords,
                radius = 1.5,
                debug = false,
                options = {
                    {
                        name = "stash_" .. stashId,
                        label = stash.label or "Open Stash",
                        icon = "fa-solid fa-box",
                        onSelect = function()
                            TriggerServerEvent("customstashes:open", stashId)
                        end
                    }
                }
            })
        else
            ------------------------------------------
            -- E PROMPT MODE
            ------------------------------------------
            lib.zones.sphere({
                coords = stash.coords,
                radius = 1.5,
                onEnter = function()
                    lib.showTextUI("[E] " .. (stash.label or "Open Stash"))
                end,
                onExit = function()
                    lib.hideTextUI()
                end,
                inside = function()
                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent("customstashes:open", stashId)
                    end
                end
            })
        end
    end
end)

--[[

CreateThread(function()
    for stashId, stash in pairs(Config.Stashes) do
        lib.zones.sphere({
            coords = stash.coords,
            radius = 1.5,
            onEnter = function()
                lib.showTextUI("[E] Open Stash")
            end,
            onExit = function()
                lib.hideTextUI()
            end,
            inside = function()
                if IsControlJustReleased(0, 38) then
                    TriggerServerEvent("customstashes:open", stashId)
                end
            end
        })
    end
end)

]]