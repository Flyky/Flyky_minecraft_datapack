schedule function flyky:item_cleaner/clear_items 400t
schedule function flyky:item_cleaner/loads/load_5s 300t
tellraw @a [{"text":"将在 ","color":"yellow"},{"text":"20 秒 ","color":"aqua","bold":true},{"text":"后清理掉所有的掉落物！！","color":"yellow"}]
tellraw @a [{"text":"请在线的所有人查看: ","color":"red"},{"text":" 是否有遗落的贵重物品，以及需要捡起的掉落物;","color":"gold","bold":true},{"text":"在20秒内迅速整理好！！","color":"light_purple"}]
tellraw @a {"text":"点击此处取消此次清理","color":"gray","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger cancelclear"}}
tellraw @a {"text":"---------------------------------------------","color":"white"}