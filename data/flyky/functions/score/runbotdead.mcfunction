team leave @s
execute if score @s botDeath matches 1.. run scoreboard players operation @s deathCounter -= 1 1
execute if score @s botDeath matches 1.. run scoreboard players reset @s botDeath
tellraw @a {"text":"↑真的"}