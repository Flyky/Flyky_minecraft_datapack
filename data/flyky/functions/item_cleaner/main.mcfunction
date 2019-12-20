scoreboard players enable @a clear_items
execute as @a at @s if score @s clear_items matches 1.. run function flyky:item_cleaner/loads/load_1min
execute as @a at @s if score @s cancelclear matches 1.. run function flyky:item_cleaner/cancels/cancel_1min