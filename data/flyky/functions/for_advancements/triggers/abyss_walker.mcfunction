execute as @a[scores={y_timely=..-999},gamemode=survival] at @s run scoreboard players set @s abyss_walker_t 1
execute as @a[scores={health=0}] at @s run scoreboard players set @s abyss_walker_t 0
execute as @a[scores={y_timely=0..,abyss_walker_t=1},gamemode=survival] at @s run scoreboard players set @s abyss_walker_t 2
execute as @a[scores={y_timely=0..,abyss_walker_t=..-1,abyss_walker_t=3..}] at @s run scoreboard players set @s abyss_walker_t 0
execute as @a[advancements={end/abyss_walker=true}] at @s run scoreboard players set @s abyss_walker_t 0
execute as @a[scores={abyss_walker_t=2},advancements={end/abyss_walker=false}] at @s run advancement grant @s only minecraft:end/abyss_walker