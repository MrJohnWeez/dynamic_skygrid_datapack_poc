#> Recalculates (Recursivly) Player IDs and Block Counters

# Store player's given ID number
scoreboard players add #ds_int ds_PlayerItter 1
scoreboard players operation @r[scores={ds_PlayerID=0}] ds_PlayerID = #ds_int ds_PlayerItter
execute as @a at @s if score @s ds_PlayerID = #ds_int ds_PlayerItter run say found player!

# Create a block counter armor stand and give it the same id value as current player
execute as @a at @s if score @s ds_PlayerID = #ds_int ds_PlayerItter run summon armor_stand ~ ~-1 ~ {NoGravity:1b, NoBasePlate:1b, Tags:["ds_PLAYER_NULL","ds_BLOCKCOUNTER"]}
scoreboard players operation @e[type=minecraft:armor_stand, tag=ds_PLAYER_NULL] ds_BcID = #ds_int ds_PlayerItter
execute as @e[type=minecraft:armor_stand, tag=ds_PLAYER_NULL, limit=1] run function ds:block_counter_init

tag @e[type=minecraft:armor_stand, tag=ds_PLAYER_NULL] remove ds_PLAYER_NULL

# Move to next random player
execute if score #ds_int ds_PlayerItter < #ds_int ds_PlayerCount run function ds:assign_player_ids