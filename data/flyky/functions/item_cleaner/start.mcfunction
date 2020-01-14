scoreboard objectives add cancelclear trigger
scoreboard players enable @a cancelclear
tellraw @a [{"text":"-- !!启动"},{"text":"【掉落物清理】","color":"red"}]
execute as @a at @s if score @s clear_items matches 1 run function flyky:item_cleaner/loads/load_20s
execute as @a at @s if score @s clear_items matches 2 run function flyky:item_cleaner/loads/load_1min
scoreboard players reset @a clear_items