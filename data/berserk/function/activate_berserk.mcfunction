# Activate system
tag @s add berserkActive

# Reset stacks and timers
# scoreboard players set @s berserkAbsorptionLevel 0
# scoreboard players set @s berserkAbsorptionDecayTimer 0

# IMPORTANT: reset accumulated kills
scoreboard players set @s berserkMobKills 0

# Reset potion duration timer
scoreboard players set @s berserkTimer 0

# Feedback on effect build up
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 1 64
execute as @s run playsound minecraft:item.trident.thunder player @s ~ ~ ~ 1 2

# Allow reuse
advancement revoke @s only berserk:berserk