scoreboard players tag @a[score_dead_min=1,score_dead=1] remove ingame
execute @a[tag=ingame] ~ ~ ~ /scoreboard players tag @a[score_dead_min=1] add spec1
execute @a[tag=!spec1] ~ ~ ~ execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ /scoreboard players tag @a add lb
execute @a[tag=!spec1] ~ ~ ~ execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ /scoreboard players tag @a remove spec
execute @a[tag=!spec1] ~ ~ ~ execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ /spawnpoint @a[tag=!spec1] -118 5 -770
clear @a[score_dead_min=1]
gamemode 2 @a[score_dead_min=1]
scoreboard players set @a[score_dead_min=1] dead 0
teleport @a[tag=spec1] -177 5 -695
spawnpoint @a[tag=spec1] -177 5 -695
scoreboard players tag @a[tag=spec1] add spec2
scoreboard players tag @a[tag=spec2] remove spec1 

#Spectator items
replaceitem entity @a[tag=spec2] slot.hotbar.8 structure_void 1 0 {display:{LocName:"Return to Lobby",Lore:["Drop me to return to the main lobby"]},Dropped:1b}
replaceitem entity @a[tag=spec2] slot.hotbar.4 tnt 1 0 {display:{LocName:"Drop a Bomb",Lore:["Drop me to drop a bomb on all players still in the game!"]},Dropped:1b}
replaceitem entity @a[tag=spec2] slot.hotbar.0 web 1 0 {display:{LocName:"Slowness",Lore:["Drop me to give all players still in the game a slowness effect!"]},Dropped:1b}