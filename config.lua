Config = {}

Config.UseTarget = true   -- true = target, false = E prompt

Config.Stashes = {
    -- These are examples need to change for your server 
    -- You can place more then one specific job, gang, citizin just remember to put the comma after each one. Ex: {police = 2, ems = 2 }

    -- Example: Public Stash Everyone can access it.
    ["public_stash"] = {
        label = "Public Stash",
        coords = vec3(1741.29, 3317.43, 40.22),
        size = { slots = 30, weight = 15000 },
        access = {
            everyone = true
        }
    },

}

--[[

    -- Example for Jobs
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

    -- Example for Gangs
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

    -- Example: Personal Stashes for designated player
    ["secret_personal_1"] = {
        label = "Secret Stash",
        coords = vec3(279.43, -971.93, 29.42),
        size = { slots = 60, weight = 25000 },
        access = {
            jobs = {},
            gangs = {},
            citizens = { YX11L004 = true, }, -- specific player CID
            everyone = false
        }
    },

    -- Example: Personal Stashes for designated players
    ["secret_personal_2"] = {
        label = "Secret Stash",
        coords = vec3(279.31, -969.83, 29.42),
        size = { slots = 60, weight = 25000 },
        access = {
            jobs = {},
            gangs = {},
            citizens = { YX11L004 = true, SEG8C2H8 = true }, -- specific players CID 
            everyone = false
        }
    },

   -- Example: Personal stashes - Every player has there on stash - suggested by [Ucok Setiawan]
    ["personal_stash_01"] = {
        label = "Secret Stash",
        coords = vec3(1740.75, 3321.61, 40.22),
        size = { slots = 60, weight = 25000 },
        access = {
            jobs = {},
            gangs = {},
            citizens = {},
            everyone = true,
            personal = true, --  'true' for personal stash
        }
    },

<<<<<<< HEAD
]]
 
=======
    -- Idea from [Ucok Setiawan]
    ["secret_personal_3"] = {
        label = "Secret Stash",
        coords = vec3(279.31, -969.83, 29.42),
        size = { slots = 60, weight = 25000 },
        access = {
            jobs = {},
            gangs = {},
            citizens = {},
            everyone = true,
            personal = true, --  'true' for personal stash
        }
    },
]]
>>>>>>> c0c790ab3915c3f3360580082e14fd47add9b974
