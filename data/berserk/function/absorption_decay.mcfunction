# Reset Absorption level and decay timer
scoreboard players set @s berserkAbsorptionLevel 0
scoreboard players set @s berserkAbsorptionDecayTimer 0

# Dispel effect
effect clear @s minecraft:absorption

# Feedback on effect decay
execute at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 1 64
execute at @s run playsound minecraft:entity.ender_eye.death player Test ~ ~ ~ 1 0.6