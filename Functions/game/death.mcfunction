scoreboard players tag @a[score_dead_min=1,score_dead=1] remove ingame
execute @a[tag=ingame] ~ ~ ~ /scoreboard players tag @a[tag=!ingame] add spec1
execute @a[tag=!spec1] ~ ~ ~ execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ /scoreboard players tag @a add lb
execute @a[tag=!spec1] ~ ~ ~ execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ /scoreboard players tag @a remove spec
execute @a[tag=!spec1] ~ ~ ~ execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ /spawnpoint @a[tag=!spec1] -118 5 -770
clear @a[score_dead_min=1]
gamemode 2 @a[score_dead_min=1]
scoreboard players set @a[score_dead_min=1,score_dead=1] dead 0
teleport @a[tag=spec1] -177 5 -695
spawnpoint @a[tag=spec1] -177 5 -695
scoreboard players tag @a[tag=spec1] add spec2
scoreboard players tag @a[tag=spec2] remove spec1 
