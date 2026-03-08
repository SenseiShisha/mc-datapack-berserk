# Remove objectives
scoreboard objectives remove berserkMobKills
scoreboard objectives remove berserkDeaths
scoreboard objectives remove berserkAbsorptionLevel
scoreboard objectives remove berserkAbsorptionDecayTimer
scoreboard objectives remove berserkAbsorptionDecayDuration
scoreboard objectives remove berserkSettings
scoreboard objectives remove berserkTimer

# Remove storage
data remove storage berserk:storage lvl

tag @a remove berserkActive

advancement revoke @a only berserk:berserk

tellraw @a ["",{"text":"[Berserk Potion]","bold":true,"color":"red"},{"text":" successfully uninstalled. You can disable the pack now!","color":"green"}]

