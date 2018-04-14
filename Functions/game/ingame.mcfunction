#Tracking Missiles
function functions:bombs/trmissles
execute @a[tag=ingame] ~ ~ ~ /tp @e[type=creeper] ~ ~-0.08 ~
execute @a[tag=ingame] ~ ~ ~ /tp @e[type=creeper] ~ ~-0.08 ~
execute @a[tag=ingame] ~ ~ ~ /tp @e[type=creeper] ~ ~-0.08 ~
effect @e[type=creeper] speed 1 3 true

#Flashbangs
function functions:bombs/fbangs
execute @a[score_mode_min=0,score_mode=2] ~ ~ ~ execute @e[r=3,tag=flash] ~ ~ ~ summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}
execute @a[score_mode_min=3,score_mode=3] ~ ~ ~ execute @e[r=3,tag=flash] ~ ~ ~ summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2}
execute @a ~ ~ ~ execute @e[r=3,tag=flash] ~ ~ ~ effect @a[r=3,score_mode_min=0,score_mode=2] blindness 2 100
execute @a ~ ~ ~ execute @e[r=3,tag=flash] ~ ~ ~ kill @e[tag=flash,r=1]

#Poison Bombs
function functions:bombs/gbombs
execute @a ~ ~ ~ execute @e[r=2,tag=pois] ~ ~ ~ effect @a[r=2] poison 2 100
execute @a ~ ~ ~ execute @e[r=2,tag=pois] ~ ~ ~ kill @e[tag=pois,r=1]

#Fireballs
function functions:bombs/fireballs

#Tnt
function functions:bombs/tnt

#Points/Upgrades System
scoreboard players add @a points2 1
execute @a[score_points2_min=200,score_diffnum_min=1,score_diffnum=1,tag=ingame] ~ ~ ~ /scoreboard players add @p points 1
execute @a[score_points2_min=200,score_diffnum_min=1,score_diffnum=1,score_points_min=1,tag=ingame] ~ ~ ~ /scoreboard players set @p points2 0
execute @a[score_points2_min=150,score_diffnum_min=2,score_diffnum=2,tag=ingame] ~ ~ ~ /scoreboard players add @p points 1
execute @a[score_points2_min=150,score_diffnum_min=2,score_diffnum=2,score_points_min=1,tag=ingame] ~ ~ ~ /scoreboard players set @p points2 0
execute @a[score_points2_min=60,score_diffnum_min=3,score_diffnum=3,tag=ingame] ~ ~ ~ /scoreboard players add @p points 1
execute @a[score_points2_min=60,score_diffnum_min=3,score_diffnum=3,score_points_min=1,tag=ingame] ~ ~ ~ /scoreboard players set @p points2 0
execute @a[score_points2_min=20,score_diffnum_min=4,tag=ingame] ~ ~ ~ /scoreboard players add @p points 1
execute @a[score_points2_min=20,score_diffnum_min=4,score_points_min=1,tag=ingame] ~ ~ ~ /scoreboard players set @p points2 0
function functions:game/upgrades

#Second Life
execute @a ~ ~ ~ detect ~ ~-0.1 ~ air * /fill -198 34 -712 -170 34 -711 air
execute @a ~ ~ ~ detect ~ ~-0.1 ~ planks 5 /effect @p resistance 3 100 true

#Drop scores
execute @a[tag=ingame] ~ ~ ~ /scoreboard players add @e[type=armor_stand,name=dt] drop 1
execute @a[tag=ingame] ~ ~ ~ /scoreboard players add @e[type=armor_stand,name=dt] drop5 1
execute @a[tag=ingame,score_diffnum_min=2] ~ ~ ~ /scoreboard players add @e[type=armor_stand,name=dt] drop2 1
execute @a[tag=ingame] ~ ~ ~ /scoreboard players add @e[type=armor_stand,name=dt] drop6 1
execute @a[tag=ingame] ~ ~ ~ /scoreboard players add @e[type=armor_stand,name=dt] drop7 1

execute @a[tag=ingame,score_mode_min=0,score_mode=0] ~ ~ ~ /kill @e[type=item]
execute @a[tag=ingame,score_mode_min=2,score_mode=3] ~ ~ ~ /kill @e[type=item]

execute @a[score_dead_min=1,score_dead=1] ~ ~ ~ function functions:game/death

scoreboard players add @e[type=armor_stand,name=dt] Time2 1
execute @e[score_Time2_min=25] ~ ~ ~ /scoreboard players add @a[tag=ingame] Time 1
scoreboard players set @e[type=armor_stand,name=dt,score_Time2_min=25] Time2 0

tp @a[tag=spec2,score_id1_min=1] -118 5 -770
spawnpoint @a[tag=spec2,score_id1_min=1] -118 5 -770
clear @a[score_id1_min=1]
scoreboard players set @a[score_id1_min=1] id1 0
execute @a[score_id2_min=1] ~ ~ ~ execute @a[tag=ingame] ~ ~ ~ /summon tnt ~ ~5 ~ {Fuse:40}
scoreboard players set @a[score_id2_min=1] id2 0
execute @a[score_id3_min=1] ~ ~ ~ /effect @a[tag=ingame] slowness 5 2 true
scoreboard players set @a[score_id3_min=1] id3 0
scoreboard players tag @e[type=item] add dropped {Item:{tag:{Dropped:1b}}}
kill @e[type=item,tag=dropped]