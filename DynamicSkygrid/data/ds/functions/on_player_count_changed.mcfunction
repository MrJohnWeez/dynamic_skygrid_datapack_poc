#> Used to force the scoreboards of new players who are fist joining

execute if score #ds_int ds_Debug matches 1.. run say player count changed
function ds:player_init

say Recalculating user IDs...
scoreboard players set @a ds_PlayerID 0
scoreboard players set #ds_int ds_PlayerItter 0
kill @e[type=minecraft:armor_stand,tag=ds_BLOCKCOUNTER]
function ds:assign_player_ids
say IDs were calculated!