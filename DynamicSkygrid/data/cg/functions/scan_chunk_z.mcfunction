#> Itterates through chunk Z teleporting the block counter armor stand

scoreboard players set @s ds_LocalX 0
scoreboard players operation @s cg_WorldZ = @s ds_Chunk_Base_Z
scoreboard players operation @s cg_WorldZ += @s ds_LocalZ
execute as @s run function cg:scan_chunk_x

scoreboard players operation @s ds_LocalZ += #ds_int ds_GridGapZ

scoreboard players operation @s ds_FinishedZ = #ds_int ds_ChunkSize
scoreboard players operation @s ds_FinishedZ -= @s ds_LocalZ

# If local chunk Z has not been reached generate x layers
execute if score @s ds_FinishedZ matches 1.. as @s run function cg:scan_chunk_z