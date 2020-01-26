#> Moves the current block counter to it's local chunk min

# Tp block counter to 000 of chunk
execute store result entity @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] Pos[0] double 1 run scoreboard players get @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_Chunk_Base_X
execute store result entity @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] Pos[1] double 1 run scoreboard players get #ds_int ds_MinGridHeight
execute store result entity @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] Pos[2] double 1 run scoreboard players get @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_Chunk_Base_Z