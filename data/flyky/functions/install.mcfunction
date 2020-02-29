function flyky:score/install
function flyky:health/install
function flyky:sleep/install
function flyky:highlight_to_sayhi/install
function flyky:welcome/install
function flyky:item_cleaner/install
function flyky:bigkiller/install
function flyky:config/install
tellraw @a {"text":"---------------------------------------------","color":"white"}
tellraw @a [{"text":"Welcome to use ","color":"yellow"},{"text":"[Flyky_minecraft_datapack]","color":"light_purple","underlined":true},{"text":"  for server by ","color":"yellow"},{"text":"[Flyky]","color":"aqua","underlined":true}]
tellraw @a [{"text":"欢迎使用 ","color":"yellow"},{"text":"[Flyky的MC数据包(server)]，","color":"light_purple","underlined":true}]
tellraw @a [{"text":"作者：Flyky，欢迎来bilibili关注我， 点击 ","color":"white"},{"text":"<","color":"dark_gray"},{"text":" 这里 ","color":"red","clickEvent": {"action": "open_url","value": "https://space.bilibili.com/3981818"},"hoverEvent": {"action": "show_text","value": "→ 转跳至Flykyカカ的bilibili空间 ←"}},{"text":">","color":"dark_gray"}]
tellraw @a {"text":"---------------------------------------------\n","color":"white"}