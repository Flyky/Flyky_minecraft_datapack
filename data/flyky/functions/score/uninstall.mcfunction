#取消记分板显示#
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.gray
scoreboard objectives setdisplay sidebar.team.dark_red
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.light_purple
scoreboard objectives setdisplay sidebar.team.gold
####
#移除记分板#
scoreboard objectives remove botDeath
####
#移除工具项目#
scoreboard objectives remove diamond_pickaxe
scoreboard objectives remove diamond_axe
scoreboard objectives remove diamond_shovel
scoreboard objectives remove iron_pickaxe
scoreboard objectives remove iron_axe
scoreboard objectives remove iron_shovel
scoreboard objectives remove stone_pickaxe
scoreboard objectives remove stone_axe
scoreboard objectives remove stone_shovel
####
#移除队伍#
team remove displayScoresOff
team remove displayScoresOn
team remove killCounter
team remove digCounter
team remove deathCounter
team remove tradingCounter
team remove fishingCounter
team remove damageTaken
team remove activation
####
#移除开关#
scoreboard objectives remove scoreSwitch
####
#移除缓存#
scoreboard objectives remove tDigC
scoreboard objectives remove tDeathC
scoreboard objectives remove tKillC
scoreboard objectives remove tFishC
scoreboard objectives remove tTradeC
scoreboard objectives remove tHurtC
scoreboard objectives remove tActC
####
#询问是否移除记分板#
tellraw @a [{"text":"是否删除记分板数据？"},{"text":"（不可恢复！！）","color":"red","bold":true},{"text":"点此删除","color":"dark_red","underlined":true,"clickEvent":{"action":"run_command","value":"/function flyky:score/delscores"},"hoverEvent":{"action":"show_text","value":"删除所有记分板数据"}},{"text":"(仅op)"}]
####


# scoreboard objectives remove timeCounter
# scoreboard objectives remove digCounter
# scoreboard objectives remove deathCounter
# scoreboard objectives remove killCounter
# scoreboard objectives remove tradingCounter
# scoreboard objectives remove fishingCounter
# team remove white
# team remove aqua
# scoreboard objectives remove scoreswitch