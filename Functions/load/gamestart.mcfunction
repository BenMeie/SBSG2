playsound minecraft:entity.enderdragon.ambient master @a ~ ~ ~ 10000
spawnpoint @a -118 5 -770
title @a title ["",{"text":"SURVIVE","color":"dark_red","bold":true}]
clear @a
scoreboard players tag @a add ingame
give @a[score_mode_min=1,score_mode=1] dirt 15
give @a[score_mode_min=1,score_mode=1] stone 5
give @a[score_mode_min=1,score_mode=1] wooden_pickaxe
gamerule gameLoopFunction functions:game/ingame