#> Calculate if blocks should generate within a chunk

scoreboard players add #ds_int ds_PlayerItter 1

# Select correct block counter and player
execute as @e[type=minecraft:armor_stand, scores={ds_BcID=0..}] if score @s ds_BcID = #ds_int ds_PlayerItter run tag @s add ds_SELECTED_BC

# Tp block counter to 000 of chunk
execute store result entity @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] Pos[0] double 1 run scoreboard players get @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_Chunk_Base_X
execute store result entity @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] Pos[1] double 1 run scoreboard players get #ds_int ds_TempVar2
execute store result entity @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] Pos[2] double 1 run scoreboard players get @e[limit=1,type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_Chunk_Base_Z

scoreboard players set @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_PlacedBlock 0
execute store success score @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_PlacedBlock at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] run setblock ~ ~ ~ minecraft:grass_block
execute if score @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] ds_PlacedBlock matches 1 run say placed block!
scoreboard players set @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] ds_PlacedBlock 0

# Clean up tags
tag @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC] remove ds_SELECTED_BC

# Move to next player
execute if score #ds_int ds_PlayerItter < #ds_int ds_PlayerCount run function ds:per_player_chunk_generation