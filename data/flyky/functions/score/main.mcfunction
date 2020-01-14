#活跃度模块#
execute as @a[tag=!carpetBot] if score @s actCounter matches 72000.. run function flyky:score/activationcarry
execute as @a[tag=carpetBot] run scoreboard players operation @s actCounter -= 1 1
####
#记分板循环#
scoreboard players add scoreboard timeCounter 1
execute if score scoreboard timeCounter matches 600 run scoreboard objectives setdisplay sidebar.team.aqua killCounter
execute if score scoreboard timeCounter matches 1200 run scoreboard objectives setdisplay sidebar.team.aqua digCounter
execute if score scoreboard timeCounter matches 1800 run scoreboard objectives setdisplay sidebar.team.aqua deathCounter
execute if score scoreboard timeCounter matches 2400 run scoreboard objectives setdisplay sidebar.team.aqua tradingCounter
execute if score scoreboard timeCounter matches 3000 run scoreboard objectives setdisplay sidebar.team.aqua fishingCounter
execute if score scoreboard timeCounter matches 3600 run scoreboard objectives setdisplay sidebar.team.aqua damageTaken
execute if score scoreboard timeCounter matches 4200 run scoreboard objectives setdisplay sidebar.team.aqua activation
execute if score scoreboard timeCounter matches 4800 run scoreboard objectives setdisplay sidebar.team.aqua playerLevel
execute if score scoreboard timeCounter matches 4800.. run scoreboard players set scoreboard timeCounter 0
####
#记分板开关#
scoreboard players enable @a scoreSwitch
execute as @a[scores={scoreSwitch=..-1},team=!displayScoresOff] run function flyky:score/teams/displayscoresoff
execute as @a[scores={scoreSwitch=1},team=!displayScoresOn] run function flyky:score/teams/displayscoreson
execute as @a[scores={scoreSwitch=2},team=!killCounter] run function flyky:score/teams/killcounter
execute as @a[scores={scoreSwitch=3},team=!digCounter] run function flyky:score/teams/digcounter
execute as @a[scores={scoreSwitch=4},team=!deathCounter] run function flyky:score/teams/deathcounter
execute as @a[scores={scoreSwitch=5},team=!tradingCounter] run function flyky:score/teams/tradingcounter
execute as @a[scores={scoreSwitch=6},team=!fishingCounter] run function flyky:score/teams/fishingcounter
execute as @a[scores={scoreSwitch=7},team=!damageTaken] run function flyky:score/teams/damagetaken
execute as @a[scores={scoreSwitch=8},team=!activation] run function flyky:score/teams/activation
execute as @a[scores={scoreSwitch=9},team=!playerLevel] run function flyky:score/teams/playerlevel
execute as @a[scores={scoreSwitch=10..}] run tellraw @a[scores={scoreSwitch=10..}] [{"text":"不存在编号为10及以上的记分板","color":"dark_red"}]
scoreboard players set @a[scores={scoreSwitch=..-1}] scoreSwitch 0
scoreboard players set @a[scores={scoreSwitch=1..}] scoreSwitch 0
team join displayScoresOff @a[team=]
####
#添加工具计入挖掘量#
execute as @a[scores={diamond_pickaxe=1..}] run function flyky:score/tools/diamond_pickaxe
execute as @a[scores={iron_pickaxe=1..}] run function flyky:score/tools/iron_pickaxe
execute as @a[scores={stone_pickaxe=1..}] run function flyky:score/tools/stone_pickaxe
execute as @a[scores={diamond_axe=1..}] run function flyky:score/tools/diamond_axe
execute as @a[scores={iron_axe=1..}] run function flyky:score/tools/iron_axe
execute as @a[scores={stone_axe=1..}] run function flyky:score/tools/stone_axe
execute as @a[scores={diamond_shovel=1..}] run function flyky:score/tools/diamond_shovel
execute as @a[scores={iron_shovel=1..}] run function flyky:score/tools/iron_shovel
execute as @a[scores={stone_shovel=1..}] run function flyky:score/tools/stone_shovel
####
#计算总量#
#给缓存记分板赋初始值
execute as @a[tag=!carpetBot] unless score @s tDigC matches -2147483648..2147483647 run scoreboard players operation @s tDigC = @s tDigC
execute as @a[tag=!carpetBot] unless score @s tKillC matches -2147483648..2147483647 run scoreboard players operation @s tKillC = @s tKillC
execute as @a[tag=!carpetBot] unless score @s tDeathC matches -2147483648..2147483647 run scoreboard players operation @s tDeathC = @s tDeathC
execute as @a[tag=!carpetBot] unless score @s tTradeC matches -2147483648..2147483647 run scoreboard players operation @s tTradeC = @s tTradeC
execute as @a[tag=!carpetBot] unless score @s tFishC matches -2147483648..2147483647 run scoreboard players operation @s tFishC = @s tFishC
execute as @a[tag=!carpetBot] unless score @s tHurtC matches -2147483648..2147483647 run scoreboard players operation @s tHurtC = @s tHurtC
execute as @a[tag=!carpetBot] unless score @s tActC matches -2147483648..2147483647 run scoreboard players operation @s tActC = @s tActC
#两板分数不等时运行计算函数
execute as @a unless score @s tDigC = @s digCounter run function flyky:score/totalcalculator/tdigc
execute as @a unless score @s tKillC = @s killCounter run function flyky:score/totalcalculator/tkillc
execute as @a unless score @s tDeathC = @s deathCounter run function flyky:score/totalcalculator/tdeathc
execute as @a unless score @s tTradeC = @s tradingCounter run function flyky:score/totalcalculator/ttradec
execute as @a unless score @s tFishC = @s fishingCounter run function flyky:score/totalcalculator/tfishc
execute as @a unless score @s tHurtC = @s damageTaken run function flyky:score/totalcalculator/thurtc
execute as @a unless score @s tActC = @s activation run function flyky:score/totalcalculator/tactc
#总榜在分榜中显示开=1
# execute if score 总挖掘数 totalDug matches 1.. run scoreboard players operation 总挖掘数 digCounter = 总挖掘数 totalList
# execute if score 总击杀数 totalKilled matches 1.. run scoreboard players operation 总击杀数 killCounter = 总击杀数 totalList
# execute if score 总死亡数 totalDeath matches 1.. run scoreboard players operation 总死亡数 deathCounter = 总死亡数 totalList
# execute if score 总交易数 totalTraded matches 1.. run scoreboard players operation 总交易数 tradingCounter = 总交易数 totalList
# execute if score 总钓鱼数 totalFished matches 1.. run scoreboard players operation 总钓鱼数 fishingCounter = 总钓鱼数 totalList
# execute if score 总受伤害量 totalHurt matches 1.. run scoreboard players operation 总受伤害量 damageTaken = 总受伤害量 totalList
# execute if score 总活跃时间 totalActivation matches 1.. run scoreboard players operation 总活跃时间 activation = 总活跃时间 totalList
# 总榜在分榜中显示关=0
execute if score totalDug totalDug matches ..0 run function flyky:score/totalnodisplay/digcounter
execute if score totalKilled totalKilled matches ..0 run function flyky:score/totalnodisplay/killcounter
execute if score totalDeath totalDeath matches ..0 run function flyky:score/totalnodisplay/deathcounter
execute if score totalTraded totalTraded matches ..0 run function flyky:score/totalnodisplay/tradingcounter
execute if score totalFished totalFished matches ..0 run function flyky:score/totalnodisplay/fishingcounter
execute if score totalHurt totalHurt matches ..0 run function flyky:score/totalnodisplay/damagetaken
execute if score totalActivation totalActivation matches ..0 run function flyky:score/activation/totalnodisplay
####
#假人模块#
execute as @a[tag=carpetBot,team=!fakePlayer] run function flyky:score/runaddprefix
execute as @a[team=fakePlayer,tag=!carpetBot] run function flyky:score/runbotdead
####



# scoreboard players add timeCounter timeCounter 1
# execute if score timeCounter timeCounter matches 0 run scoreboard objectives setdisplay sidebar.team.aqua killCounter
# execute if score timeCounter timeCounter matches 600 run scoreboard objectives setdisplay sidebar.team.aqua digCounter
# execute if score timeCounter timeCounter matches 1200 run scoreboard objectives setdisplay sidebar.team.aqua deathCounter
# execute if score timeCounter timeCounter matches 1800 run scoreboard objectives setdisplay sidebar.team.aqua tradingCounter
# execute if score timeCounter timeCounter matches 2400 run scoreboard objectives setdisplay sidebar.team.aqua fishingCounter
# execute if score timeCounter timeCounter matches 3000 run scoreboard objectives setdisplay sidebar.team.aqua playerLevel
# execute if score timeCounter timeCounter matches 3600 run scoreboard players set timeCounter timeCounter 0
# scoreboard players enable @a scoreswitch
# execute if entity @a[scores={scoreswitch=0},team=aqua] run team join white @a[scores={scoreswitch=0},team=aqua]
# execute if entity @a[scores={scoreswitch=1},team=!aqua] run team join aqua @a[scores={scoreswitch=1},team=!aqua]
# team join aqua @a[team=!aqua,team=!white]