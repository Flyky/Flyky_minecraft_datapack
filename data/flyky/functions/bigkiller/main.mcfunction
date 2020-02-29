# 仅拥有bigkiller标签的玩家可以使用
scoreboard players enable @a[tag=bigkiller] bigkiller
execute as @a[scores={bigkiller=..-1}] run function flyky:bigkiller/off
execute as @a[scores={bigkiller=1..}] run function flyky:bigkiller/on
execute if score bigkiller openkiller matches 1.. run function flyky:bigkiller/killer/killmobs_tp