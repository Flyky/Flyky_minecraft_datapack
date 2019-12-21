schedule clear flyky:item_cleaner/clear_items
schedule clear flyky:item_cleaner/loads/load_20s
schedule clear flyky:item_cleaner/loads/load_5s
schedule clear flyky:item_cleaner/loads/load_3s
schedule clear flyky:item_cleaner/loads/load_2s
schedule clear flyky:item_cleaner/loads/load_1s
tellraw @a {"text":"本次【清理掉落物】被终止！","color":"blue","bold":true}
scoreboard objectives remove cancelclear