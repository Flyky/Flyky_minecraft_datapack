# 新人登录
tellraw @a[tag=!oldPlayer] [{"text":"Welcome!! ","color":"red","bold":true},{"text":"欢迎新人加入 ","color":"yellow","bold":false},{"text":"摸鱼村服","color":"gold","bold":true,"underlined":true}]
tellraw @a[tag=!oldPlayer] [{"text":"本服现为 ","color":"yellow"},{"text":"JE1.15 vanilla server","color":"aqua","underlined":true},{"text":" ,开启正版验证","color":"yellow","underlined":false}]
tellraw @a[tag=!oldPlayer] {"text":"------------------------------------------","color":"gray"}
tellraw @a[tag=!oldPlayer] {"text":"服务器加入了腐竹数据包实现相关功能，详情请在群内@村长，以下为数据包功能提示","color":"light_purple"}
tellraw @a[tag=!oldPlayer] [{"text":"· 其中，自定义合成大部分同TIS外服，如压缩矿物、鞘翅潜影壳等，"},{"text":"具体可点击此处查看文档","color":"blue","clickEvent":{"action":"open_url","value":"https://github.com/Flyky/Flyky_minecraft_datapack/blob/master/data/flyky/recipes/README.md"}}]
tellraw @a[tag=!oldPlayer] [{"text":"· 指令","color":"green"},{"text":" /trigger scoreswitch set 1 ","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger scoreswitch set 1"}},{"text":"可开启计分板显示 点击此处可直接开启","color":"green","clickEvent":{"action":"run_command","value":"/trigger scoreswitch set 1"}}]
tellraw @a[tag=!oldPlayer] [{"text":"· 指令","color":"green"},{"text":" /trigger here ","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger here"}},{"text":"可触发自身高亮提示效果 点击此处可直接触发","color":"green","clickEvent":{"action":"run_command","value":"/trigger here"}}]
scoreboard players add @a[tag=!oldPlayer] loginTimes 1
tag @a[tag=!oldPlayer] add oldPlayer

# 老玩家
scoreboard players add @a[scores={QuitGame=1}] loginTimes 1
tellraw @a[scores={QuitGame=1}] [{"text":"这是您的第 ","color":"blue"},{"score":{"name":"@a[scores={QuitGame=1}]","objective":"loginTimes"}},{"text":" 次进服 ！","color":"blue"}]
tellraw @a[scores={QuitGame=1}] [{"text":"Welcome back ~","color":"red","bold":true},{"text":"欢迎回来，这里是你熟悉的 ","color":"yellow","bold":false},{"text":"摸鱼村服","color":"gold","bold":true,"underlined":true}]
tellraw @a[scores={QuitGame=1}] [{"text":"本服现为 ","color":"yellow"},{"text":"JE1.15 vanilla server","color":"aqua","underlined":true},{"text":" ,开启正版验证","color":"yellow","underlined":false}]
tellraw @a[scores={QuitGame=1}] {"text":"------------------------------------------","color":"gray"}
tellraw @a[scores={QuitGame=1}] {"text":"服务器加入了腐竹数据包实现相关功能，详情请在群内@村长，以下为数据包功能提示","color":"light_purple"}
tellraw @a[scores={QuitGame=1}] [{"text":"· 其中，自定义合成大部分同TIS外服，如压缩矿物、鞘翅潜影壳等，"},{"text":"具体可点击此处查看文档","color":"blue","clickEvent":{"action":"open_url","value":"https://github.com/Flyky/Flyky_minecraft_datapack/blob/master/data/flyky/recipes/README.md"}}]
tellraw @a[scores={QuitGame=1}] [{"text":"· 指令","color":"green"},{"text":" /trigger scoreswitch set 1 ","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger scoreswitch set 1"}},{"text":"可开启计分板显示","color":"green","clickEvent":{"action":"run_command","value":"/trigger scoreswitch set 1"}}]
tellraw @a[scores={QuitGame=1}] [{"text":"· 指令","color":"green"},{"text":" /trigger here ","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger here"}},{"text":"可触发自身高亮提示效果","color":"green","clickEvent":{"action":"run_command","value":"/trigger here"}}]
scoreboard players set @a[scores={QuitGame=1}] QuitGame 0