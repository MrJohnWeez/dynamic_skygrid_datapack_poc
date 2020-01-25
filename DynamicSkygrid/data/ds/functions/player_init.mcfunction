#> Initulize all player local varibles (by force)

say player scores were initulized!

scoreboard players set @a[tag=!ds_VARSINIT] ds_X 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_Y 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_Z 0

scoreboard players set @a[tag=!ds_VARSINIT] ds_Chunk_X 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_Chunk_Z 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_Chunk_Base_X 0
scoreboard players set @a[tag=!ds_VARSINIT] ds_Chunk_Base_Z 0

scoreboard players set @a[tag=!ds_VARSINIT] ds_PlayerID -1

tag @a[tag=!ds_VARSINIT] add ds_VARSINIT