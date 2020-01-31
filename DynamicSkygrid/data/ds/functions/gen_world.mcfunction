#> Handles the generation of new skygrid terrain (for each player)


execute as @a run function ds:get_player_coords

scoreboard players set #ds_int ds_PlayerItter 0
function ds:copy_player_coords

execute as @e[type=minecraft:armor_stand, tag=ds_BLOCKCOUNTER] run function cg:calculate_chunk_values
execute as @e[type=minecraft:armor_stand, tag=ds_BLOCKCOUNTER] run function cg:per_player_chunk_generation

scoreboard players operation ZChunk ds_SIDEBAR = @e[limit=1, type=minecraft:armor_stand, tag=ds_BLOCKCOUNTER] cg_ZChunk
scoreboard players operation XChunk ds_SIDEBAR = @e[limit=1, type=minecraft:armor_stand, tag=ds_BLOCKCOUNTER] cg_XChunk