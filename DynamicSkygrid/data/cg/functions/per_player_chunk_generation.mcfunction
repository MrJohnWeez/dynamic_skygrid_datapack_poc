#> Calculate if blocks should generate within a chunk

scoreboard players add #ds_int ds_PlayerItter 1

# Select correct block counter and player
execute as @e[type=minecraft:armor_stand, scores={ds_BcID=0..}] if score @s ds_BcID = #ds_int ds_PlayerItter run tag @s add ds_SELECTED_BC
    execute as @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run function cg:detect_new_chunk
tag @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] remove ds_SELECTED_BC

# Move to next player
execute if score #ds_int ds_PlayerItter < #ds_int ds_PlayerCount run function cg:per_player_chunk_generation