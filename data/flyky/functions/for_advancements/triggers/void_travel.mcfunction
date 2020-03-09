execute as @a[scores={y_timely=..-64},gamemode=survival] at @s run scoreboard players set @s void_travel_t 1
execute as @a[scores={health=0}] at @s run scoreboard players set @s void_travel_t 0
execute as @a[scores={y_timely=0..,void_travel_t=1},gamemode=survival] at @s run scoreboard players set @s void_travel_t 2
execute as @a[scores={y_timely=0..,void_travel_t=..-1,void_travel_t=3..}] at @s run scoreboard players set @s void_travel_t 0
execute as @a[advancements={end/void_travel=true}] at @s run scoreboard players set @s void_travel_t 0
execute as @a[scores={void_travel_t=2},advancements={end/void_travel=false}] at @s run advancement grant @s only minecraft:end/void_travel