# 仅创造模式玩家可使用大杀器
scoreboard players enable @a[gamemode=creative] bigkiller
execute as @a at @s if score @s bigkiller matches 1.. run function flyky:bigkiller/killer/killmobs_tp