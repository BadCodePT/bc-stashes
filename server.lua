local QBox = exports.qbx_core
local ox = exports.ox_inventory

-- Check if the player is allowed to open this stash
local function CanAccess(stashConfig, player)
    local cid = player.PlayerData.citizenid
    local job = player.PlayerData.job
    local gang = player.PlayerData.gang

    print(("Vars: %s - %s - %s"):format(cid, job, gang))

    print("Everyone: " .. tostring(stashConfig.access.everyone) )
    if stashConfig.access.everyone then
        return true
    end

    print("Citizens id: " .. tostring(stashConfig.access.citizens[cid] ))
    if stashConfig.access.citizens[cid] then
        return true
    end

    print("Job: " .. tostring(stashConfig.access.jobs[job.name] ))
    if stashConfig.access.jobs[job.name] then
        local minGrade = stashConfig.access.jobs[job.name]
        if job.grade.level >= minGrade then
            return true
        end
    end

    print("Gang: " .. tostring(stashConfig.access.gangs[gang.name]) )
    if stashConfig.access.gangs[gang.name] then
        local minGrade = stashConfig.access.gangs[gang.name]
        if gang.grade.level >= minGrade then
            return true
        end
    end

    return false
end


-- Register all stashes at startup
CreateThread(function()
    for stashId, stash in pairs(Config.Stashes) do
        ox:RegisterStash(
            stashId,
            stash.label,
            stash.size.slots,
            stash.size.weight,
            false -- no owner restriction
        )
        print("^2Registered stash: ^7" .. stashId)
    end
end)


-- Event: request stash open
RegisterNetEvent("customstashes:open", function(stashId)
    local src = source
    local player = QBox:GetPlayer(src)
    local stash = Config.Stashes[stashId]

    print("Stash Id: " .. stashId)

    if not stash then return end
    if not player then return end

    if not CanAccess(stash, player) then
        TriggerClientEvent('ox_lib:notify', src, {
            type = 'error',
            description = 'You are not allowed to open this stash.'
        })
        return
    end

    TriggerClientEvent("ox_inventory:openInventory", src, "stash", stashId)
end)
