#> Store and calculate cordinate info for each player
execute as @a at @s store result score @s ds_X run data get entity @s Pos[0]
execute as @a at @s store result score @s ds_Y run data get entity @s Pos[1]
execute as @a at @s store result score @s ds_Z run data get entity @s Pos[2]

# Calculate current chunk
execute as @a at @s run scoreboard players operation @s ds_Chunk_X = @s ds_X
execute as @a at @s run scoreboard players operation @s ds_Chunk_X /= #ds_int ds_ChunkSize
execute as @a at @s run scoreboard players operation @s ds_Chunk_Z = @s ds_Z
execute as @a at @s run scoreboard players operation @s ds_Chunk_Z /= #ds_int ds_ChunkSize

# calculate lowest xz cord within chunk
execute as @a at @s run scoreboard players operation @s ds_Chunk_Base_X = @s ds_Chunk_X
execute as @a at @s run scoreboard players operation @s ds_Chunk_Base_Z = @s ds_Chunk_Z

execute as @a at @s run scoreboard players operation @s ds_Chunk_Base_X *= #ds_int ds_ChunkSize
execute as @a at @s run scoreboard players operation @s ds_Chunk_Base_Z *= #ds_int ds_ChunkSize