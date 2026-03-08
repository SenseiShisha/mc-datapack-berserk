# Recalculate decay timer duration: absorptionDecayDuration = absorptionLevelDuration * absorptionLevel + absorptionBaseDuration
scoreboard players operation @s berserkAbsorptionDecayDuration = #absorptionLevelDuration berserkSettings
scoreboard players operation @s berserkAbsorptionDecayDuration *= @s berserkAbsorptionLevel
scoreboard players operation @s berserkAbsorptionDecayDuration += #absorptionBaseDuration berserkSettings

# Reset decay timer
scoreboard players set @s berserkAbsorptionDecayTimer 0

# Apply updated absorption using stored value for macro use
execute store result storage berserk:storage lvl int 1 run scoreboard players get @s berserkAbsorptionLevel
function berserk:absorption_apply with storage berserk:storage

# Feedback on effect build up
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 1 64
execute at @s run playsound minecraft:item.trident.thunder player @s ~ ~ ~ 100 2

# Increase absorption level by number of hostile kills if below max level and cap maximum level (0 = Level 1, 8 = Level 9, 9+ = infinite Level)
# This needs to be executed last in order to apply only Absorption Level 1 on first kill
execute if score @s berserkAbsorptionLevel < #absorptionMaxLevel berserkSettings run scoreboard players operation @s berserkAbsorptionLevel += @s berserkMobKills
execute if score @s berserkAbsorptionLevel > #absorptionMaxLevel berserkSettings run scoreboard players operation @s berserkAbsorptionLevel = #absorptionMaxLevel berserkSettings

# Reset kill counter
scoreboard players set @s berserkMobKills 0