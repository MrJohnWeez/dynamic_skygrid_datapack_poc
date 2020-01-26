#> Calculates all values needed for chunk generation (per block counter)

# Calculate current chunk
execute at @s run scoreboard players operation @s ds_Chunk_X = @s ds_WorldX
execute at @s run scoreboard players operation @s ds_Chunk_X /= #ds_int ds_ChunkSize
execute at @s run scoreboard players operation @s ds_Chunk_Z = @s ds_WorldZ
execute at @s run scoreboard players operation @s ds_Chunk_Z /= #ds_int ds_ChunkSize

# calculate lowest xz cord within chunk
execute at @s run scoreboard players operation @s ds_Chunk_Base_X = @s ds_Chunk_X
execute at @s run scoreboard players operation @s ds_Chunk_Base_Z = @s ds_Chunk_Z

execute at @s run scoreboard players operation @s ds_Chunk_Base_X *= #ds_int ds_ChunkSize
execute at @s run scoreboard players operation @s ds_Chunk_Base_Z *= #ds_int ds_ChunkSize