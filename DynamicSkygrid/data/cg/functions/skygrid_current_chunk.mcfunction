#> Turn a chunk into a skygrid one

scoreboard players set @s ds_FinishedX 0
scoreboard players set @s ds_FinishedY 0
scoreboard players set @s ds_FinishedZ 0

scoreboard players operation @s cg_WorldX = @s cg_CordXChunk
scoreboard players operation @s cg_WorldZ = @s cg_CordZChunk

scoreboard players set @s ds_LocalY 1
execute as @s run function cg:scan_chunk_y