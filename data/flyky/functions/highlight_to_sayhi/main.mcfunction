execute store result score @s dimension run data get entity @s Dimension 1
effect give @s minecraft:glowing 20 5
scoreboard players reset @s here
execute store result score @s x_player run data get entity @s Pos[0] 1
execute store result score @s y_player run data get entity @s Pos[1] 1
execute store result score @s z_player run data get entity @s Pos[2] 1
execute if score @s dimension matches 0 run function flyky:highlight_to_sayhi/overworld
execute if score @s dimension matches 1 run function flyky:highlight_to_sayhi/the_end
execute if score @s dimension matches -1 run function flyky:highlight_to_sayhi/the_nether
tellraw @s {"text":"您将被高亮20秒!","color":"gold"}
tellraw @a [{"text":"指令","color":"green"},{"text":" /trigger here ","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger here"}},{"text":"可触发该效果","color":"green","clickEvent":{"action":"run_command","value":"/trigger here"}}]