scoreboard players add @a dd_tick 1
execute as @a at @s run scoreboard players operation @s dd_day = @s dd_tick
execute as @a at @s run scoreboard players operation @s dd_day_remainder = @s dd_tick

scoreboard players operation @a dd_day /= 24000 24000
scoreboard players operation @a dd_day_remainder %= 24000 24000

execute as @a[scores={sleeper=1..}] at @s run scoreboard players set @s dd_tick 0
execute as @a[scores={health=..0}] at @s run scoreboard players set @s dd_tick 0
# scoreboard players set @a sleeper 0

execute as @a[scores={dd_day_remainder=0,dd_day=3..}] at @s run function flyky:daidailll_elf/warning