#> Moves the current block counter to it's local chunk min

# Tp block counter to 000 of chunk
execute as @s store result entity @s Pos[0] double 1 run scoreboard players get @s ds_Chunk_Base_X
execute as @s store result entity @s Pos[1] double 1 run scoreboard players get #ds_int ds_MinGridHeight
execute as @s store result entity @s Pos[2] double 1 run scoreboard players get @s ds_Chunk_Base_Z