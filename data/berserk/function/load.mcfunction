# Detect hostile mob kills
scoreboard objectives add berserkMobKills minecraft.custom:minecraft.mob_kills

# Register death for effect removal on death
scoreboard objectives add berserkDeaths minecraft.custom:minecraft.deaths

# Scroeboard entries for absorption application and decay
scoreboard objectives add berserkAbsorptionLevel dummy
scoreboard objectives add berserkAbsorptionDecayTimer dummy
scoreboard objectives add berserkAbsorptionDecayDuration dummy
scoreboard objectives add berserkSettings dummy
scoreboard objectives add berserkTimer dummy

# Set default config if not specified already
execute unless score #absorptionMaxLevel berserkSettings matches 1.. run scoreboard players set #absorptionMaxLevel berserkSettings 4
execute unless score #absorptionBaseDuration berserkSettings matches 1.. run scoreboard players set #absorptionBaseDuration berserkSettings 200
execute unless score #absorptionLevelDuration berserkSettings matches 1.. run scoreboard players set #absorptionLevelDuration berserkSettings 100
execute unless score #berserkDuration berserkSettings matches 1.. run scoreboard players set #berserkDuration berserkSettings 2400

# Reload message
tellraw @a ["",{"text":"[Berserk Potion]","bold":true,"color":"red"},{"text":" version 1.0 (1.21.1) loaded!\n","color":"dark_green"},{"text":"> Click here to open the config menu!\n","color":"gold","clickEvent":{"action":"run_command","value":"/function berserk:config"},"hoverEvent":{"action":"show_text","contents":"Click to open..."}}]
