#> Calculates all values needed for chunk generation (per block counter)

# Calculate current chunk
execute as @s at @s run scoreboard players operation @s ds_Chunk_X = @s ds_WorldX
execute as @s at @s run scoreboard players operation @s ds_Chunk_X /= #ds_int ds_ChunkSize
execute as @s at @s run scoreboard players operation @s ds_Chunk_Z = @s ds_WorldZ
execute as @s at @s run scoreboard players operation @s ds_Chunk_Z /= #ds_int ds_ChunkSize

# calculate lowest xz cord within chunk
execute as @s at @s run scoreboard players operation @s ds_Chunk_Base_X = @s ds_Chunk_X
execute as @s at @s run scoreboard players operation @s ds_Chunk_Base_Z = @s ds_Chunk_Z

execute as @s at @s run scoreboard players operation @s ds_Chunk_Base_X *= #ds_int ds_ChunkSize
execute as @s at @s run scoreboard players operation @s ds_Chunk_Base_Z *= #ds_int ds_ChunkSize