#> Moves the block counter to the current chunk that is is being checked by per_player_chunk_generation function

scoreboard players operation @s cg_CordXChunk = @s ds_Chunk_X
scoreboard players operation @s cg_CordXChunk += @s cg_XChunk
scoreboard players operation @s cg_CordXChunk *= #ds_int ds_ChunkSize

scoreboard players operation @s cg_CordZChunk = @s ds_Chunk_Z
scoreboard players operation @s cg_CordZChunk += @s cg_ZChunk
scoreboard players operation @s cg_CordZChunk *= #ds_int ds_ChunkSize

# Tp block counter to 000 of chunk
execute as @s store result entity @s Pos[0] double 1 run scoreboard players get @s cg_CordXChunk
execute as @s store result entity @s Pos[1] double 1 run scoreboard players get #ds_int ds_MinGridHeight
execute as @s store result entity @s Pos[2] double 1 run scoreboard players get @s cg_CordZChunk