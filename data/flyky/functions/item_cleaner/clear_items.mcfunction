execute as @e[type=item] run scoreboard players add @a clear_item_num 1
kill @e[type=item]
tellraw @a [{"text":"【清理掉落物】完成，本次共清理了 ","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"clear_item_num","name":"@r"},"color":"red","bold":false,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":" 堆掉落物","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a {"text":"---------------------------------------------","color":"white"}
scoreboard players set @a clear_item_num 0
scoreboard objectives remove cancelclear