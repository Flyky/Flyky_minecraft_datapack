scoreboard players add timeCounter timeCounter 1
execute if score timeCounter timeCounter matches 0 run scoreboard objectives setdisplay sidebar.team.aqua killCounter
execute if score timeCounter timeCounter matches 600 run scoreboard objectives setdisplay sidebar.team.aqua digCounter
execute if score timeCounter timeCounter matches 1200 run scoreboard objectives setdisplay sidebar.team.aqua deathCounter
execute if score timeCounter timeCounter matches 1800 run scoreboard objectives setdisplay sidebar.team.aqua tradingCounter
execute if score timeCounter timeCounter matches 2400 run scoreboard objectives setdisplay sidebar.team.aqua fishingCounter
execute if score timeCounter timeCounter matches 3000 run scoreboard objectives setdisplay sidebar.team.aqua playerLevel
execute if score timeCounter timeCounter matches 3600 run scoreboard players set timeCounter timeCounter 0
scoreboard players enable @a scoreswitch
execute if entity @a[scores={scoreswitch=0},team=aqua] run team join white @a[scores={scoreswitch=0},team=aqua]
execute if entity @a[scores={scoreswitch=1},team=!aqua] run team join aqua @a[scores={scoreswitch=1},team=!aqua]
team join aqua @a[team=!aqua,team=!white]