#> Initulize all player local varibles (by force)

say player scores were initulized!

scoreboard players set @a[tag=!ds_VARSINIT] ds_WorldX 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_WorldY 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_WorldZ 0

scoreboard players set @a[tag=!ds_VARSINIT] ds_PlayerID -1

tag @a[tag=!ds_VARSINIT] add ds_VARSINIT