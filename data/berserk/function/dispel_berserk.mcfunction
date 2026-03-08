# Remove tag
tag @s remove berserkActive

# Reset Absorption level and decay timer; dispel effect
scoreboard players set @s berserkAbsorptionLevel 0
scoreboard players set @s berserkAbsorptionDecayTimer 0

# Dispel effect
effect clear @s minecraft:absorption

# Feedback on effect decay
execute at @s run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 16
execute at @s run playsound minecraft:item.trident.return player @s ~ ~ ~ 1