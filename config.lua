Config = {}

Config.UseTarget = true   -- true = target, false = E prompt

Config.Stashes = {
    -- these are examples need to change for your server.

    ["police_armory"] = {
        label = "Police Armory",
        coords = vec3(452.12, -980.12, 30.69),
        size = { slots = 70, weight = 50000 },
        access = {
            jobs = { police = 2 },  -- job name = min grade
            gangs = {},             -- or gangs = { ballas = 0 }
            citizens = {},          -- list of citizenids = { CID = true }
            everyone = false        -- allow public access?
        }
    },

    ["gang_lootstash"] = {
        label = "Ballas Loot Stash",
        coords = vec3(100.12, -1954.0, 20.80),
        size = { slots = 50, weight = 30000 },
        access = {
            jobs = {},
            gangs = { ballas = 0 },
            citizens = {},
            everyone = false
        }
    },

    ["secret_personal_1"] = {
        label = "Secret Stash",
        coords = vec3(279.43, -971.93, 29.42),
        size = { slots = 60, weight = 25000 },
        access = {
            jobs = {},
            gangs = {},
            citizens = { YX11L004 = true, }, -- specific player
            everyone = false
        }
    },

    ["secret_personal_2"] = {
        label = "Secret Stash",
        coords = vec3(279.31, -969.83, 29.42),
        size = { slots = 60, weight = 25000 },
        access = {
            jobs = {},
            gangs = {},
            citizens = { YX11L004 = true, SEG8C2H8 = true }, -- specific players
            everyone = false
        }
    },

    ["public_dumpster"] = {
        label = "Public Dumpster",
        coords = vec3(-1389.4, -587.5, 30.2),
        size = { slots = 30, weight = 15000 },
        access = {
            everyone = true
        }
    },
}
