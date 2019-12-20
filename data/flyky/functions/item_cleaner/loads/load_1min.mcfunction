scoreboard objectives add cancelclear trigger
scoreboard players enable @a cancelclear
scoreboard players reset @a clear_items
schedule function flyky:item_cleaner/clear_items 1200t
tellraw @a [{"text":"启动【清理掉落物】，将在 ","color":"yellow"},{"text":"1 分钟 ","color":"aqua","bold":true},{"text":"后清理掉所有的掉落物！！","color":"yellow"}]
tellraw @a [{"text":"请在线的所有人查看: ","color":"red"},{"text":" 是否有遗落的贵重物品，以及需要捡起的掉落物;","color":"gold","bold":true},{"text":"在1分钟内迅速整理好！！","color":"red"}]
tellraw @a {"text":"点击此处取消此次清理","color":"gray","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cancelclear"}}
tellraw @a {"text":"---------------------------------------------","color":"white"}