# Increment timer
scoreboard players add @s berserkAbsorptionDecayTimer 1

# When timer reaches interval → dispel Absorption and reset timer and levels
execute if score @s berserkAbsorptionDecayTimer >= @s berserkAbsorptionDecayDuration run function berserk:absorption_decay