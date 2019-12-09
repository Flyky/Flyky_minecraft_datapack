scoreboard objectives add timeCounter dummy
scoreboard objectives add playerLevel level {"text":"萌新值","color":"gold"}
scoreboard objectives add digCounter minecraft.used:minecraft.diamond_pickaxe {"text":"挖掘榜","color":"gray"}
scoreboard objectives add deathCounter deathCount {"text":"狗带榜","color":"dark_red"}
scoreboard objectives add killCounter totalKillCount {"text":"击杀榜","color":"red"}
scoreboard objectives add tradingCounter minecraft.custom:minecraft.traded_with_villager {"text":"PY榜","color":"green"}
scoreboard objectives add fishingCounter minecraft.custom:minecraft.fish_caught {"text":"钓鱼榜","color":"blue"}
team add aqua
team add white
team modify white color white
team modify aqua color aqua
scoreboard objectives add scoreswitch trigger
scoreboard players enable @a scoreswitch