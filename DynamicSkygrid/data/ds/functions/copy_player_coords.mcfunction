#> Copy all player's cords to their block counter entity

scoreboard players add #ds_int ds_PlayerItter 1

# Select correct block counter and player
execute as @e[type=minecraft:armor_stand, scores={ds_BcID=0..}] if score @s ds_BcID = #ds_int ds_PlayerItter run tag @s add ds_SELECTED_BC
execute as @a if score @s ds_PlayerID = #ds_int ds_PlayerItter run tag @s add ds_SELECTED_PLAYER

# Copy player cords into block counter
scoreboard players operation @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_WorldX = @a[limit=1, tag=ds_SELECTED_PLAYER] ds_WorldX
scoreboard players operation @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_WorldY = @a[limit=1, tag=ds_SELECTED_PLAYER] ds_WorldY
scoreboard players operation @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_WorldZ = @a[limit=1, tag=ds_SELECTED_PLAYER] ds_WorldZ

# Clean up tags
tag @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] remove ds_SELECTED_BC
tag @a[tag=ds_SELECTED_PLAYER] remove ds_SELECTED_PLAYER

# Move to next player
execute if score #ds_int ds_PlayerItter < #ds_int ds_PlayerCount run function ds:copy_player_coords