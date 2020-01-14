scoreboard players enable @a clear_items
execute as @a at @s if score @s clear_items matches 1.. run function flyky:item_cleaner/start
execute as @a at @s if score @s cancelclear matches 1.. run function flyky:item_cleaner/cancel