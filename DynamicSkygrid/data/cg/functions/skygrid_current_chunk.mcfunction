#> Turn a chunk into a skygrid one

say generated new chunk!

scoreboard players set @s ds_FinishedX 0
scoreboard players set @s ds_FinishedY 0
scoreboard players set @s ds_FinishedZ 0

scoreboard players operation @s cg_WorldX = @s ds_Chunk_Base_X
scoreboard players operation @s cg_WorldZ = @s ds_Chunk_Base_Z

scoreboard players set @s ds_LocalY 1
execute as @s run function cg:scan_chunk_y