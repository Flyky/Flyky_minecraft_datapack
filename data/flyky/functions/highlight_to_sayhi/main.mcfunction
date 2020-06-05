execute store result score @s dimension run data get entity @s Dimension
effect give @s minecraft:glowing 30 5
scoreboard players reset @s here
execute store result score @s x_player run data get entity @s Pos[0] 1
execute store result score @s y_player run data get entity @s Pos[1] 1
execute store result score @s z_player run data get entity @s Pos[2] 1
execute if score @s dimension matches 19 run function flyky:highlight_to_sayhi/overworld
execute if score @s dimension matches 17 run function flyky:highlight_to_sayhi/the_end
execute if score @s dimension matches 20 run function flyky:highlight_to_sayhi/the_nether
tellraw @s {"text":"您将被高亮30秒!","color":"#66cc99","italic":true}
tellraw @a [{"text":"指令","color":"#00ff99"},{"text":" /trigger here ","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger here"},"hoverEvent":{"action":"show_text","value":"点击以写入聊天栏"}},{"text":"可触发该效果","color":"#00ff88","clickEvent":{"action":"run_command","value":"/trigger here"},"hoverEvent":{"action":"show_text","value":"点击以触发[here]"}}]