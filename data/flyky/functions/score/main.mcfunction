scoreboard players add timeCounter timeCounter 1
execute if score timeCounter timeCounter matches 0 run scoreboard objectives setdisplay sidebar.team.dark_purple killCounter
execute if score timeCounter timeCounter matches 600 run scoreboard objectives setdisplay sidebar.team.dark_purple digCounter
execute if score timeCounter timeCounter matches 1200 run scoreboard objectives setdisplay sidebar.team.dark_purple deathCounter
execute if score timeCounter timeCounter matches 1800 run scoreboard objectives setdisplay sidebar.team.dark_purple tradingCounter
execute if score timeCounter timeCounter matches 2400 run scoreboard objectives setdisplay sidebar.team.dark_purple fishingCounter
execute if score timeCounter timeCounter matches 3000 run scoreboard players set timeCounter timeCounter 0
scoreboard players enable @a scoreswitch
execute if entity @a[scores={scoreswitch=0},team=dark_purple] run team join aqua @a[scores={scoreswitch=0},team=dark_purple]
execute if entity @a[scores={scoreswitch=1},team=!dark_purple] run team join dark_purple @a[scores={scoreswitch=1},team=!dark_purple]
team join aqua @a[team=!dark_purple,team=!aqua]