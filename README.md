# BC-Stashes

**Custom stash system for QBox + ox_inventory**

This resource allows you to create configurable stash locations in FiveM with access restrictions based on:

- Jobs (with minimum grade)
- Gangs (with minimum grade)
- Specific players (by citizenid)
- Public access (everyone)
- Personal stash - Added 2026-03-17

It supports both:

- **E prompt** (ox_lib zones)  
- **Target interaction** (ox_target)

---

## Installation

1. Copy the `bc-stashes` folder to your server `resources` folder.
2. Add `ensure bc-stashes` to your `server.cfg`.
3. Make sure you have `ox_inventory`, `ox_lib`, and `qbx_core` as dependencies.
---

## Configuration

Edit `config.lua` 
- **to define stashes**
- **switch between `E prompt` and `target mode`** 

```lua
Config.UseTarget = true -- true = target, false = E prompt


Config.Stashes = {
    -- Example: Public Stash Everyone can access it.
    ["public_stash"] = {
        label = "Public Stash",
        coords = vec3(1741.29, 3317.43, 40.22),
        size = { slots = 30, weight = 15000 },
        access = {
            everyone = true
        }
    },
    
    -- Example: Jobs Stash
    ["police_armory"] = {
        label = "Police Armory",
        coords = vec3(452.12, -980.12, 30.69),
        size = { slots = 70, weight = 50000 },
        access = {
            jobs = { police = 2 },
            gangs = {},
            citizens = {},
            everyone = false
        }
    },
    -- more examples in config.lua
}


