# Handle kills
execute as @a[scores={berserkMobKills=1..}] run function berserk:main

# Handle absorption levels decay
execute as @a[scores={berserkAbsorptionLevel=1..}] run function berserk:absorption_decay_timer

# Handle berserk potion expiry
scoreboard players add @s berserkTimer 1
execute if score @s berserkTimer >= #berserkDuration berserkSettings run function berserk:dispel_berserk

# Handle player deaths
execute as @a[scores={berserkDeaths=1..}] run function berserk:handle_death