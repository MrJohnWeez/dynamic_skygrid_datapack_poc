#> Itterates through chunk X teleporting the block counter armor stand

scoreboard players operation @s cg_WorldX = @s ds_Chunk_Base_X
scoreboard players operation @s cg_WorldX += @s ds_LocalX
execute as @s run function cg:set_random_block

scoreboard players operation @s ds_LocalX += #ds_int ds_GridGapX


scoreboard players operation @s ds_FinishedX = #ds_int ds_ChunkSize
scoreboard players operation @s ds_FinishedX -= @s ds_LocalX

# If local chunk X has not been reached place block in current location
execute if score @s ds_FinishedX matches 1.. as @s run function cg:scan_chunk_x
