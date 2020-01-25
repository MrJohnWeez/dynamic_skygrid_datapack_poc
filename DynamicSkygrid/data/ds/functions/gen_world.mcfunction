#> Handles the generation of new skygrid terrain (for each player)

execute as @a at @s run function ds:get_player_coords

scoreboard players set #ds_int ds_PlayerItter 0
function ds:per_player_chunk_generation
