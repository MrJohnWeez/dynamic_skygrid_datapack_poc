#> Determines and controls number of players

# stores total number of players in ds_playerCount
scoreboard players operation #ds_int ds_P_PlayerCount = #ds_int ds_PlayerCount
scoreboard players set #ds_int ds_PlayerCount 0
execute as @a at @s run scoreboard players add #ds_int ds_PlayerCount 1
execute unless score #ds_int ds_PlayerCount = #ds_int ds_P_PlayerCount run function ds:on_player_count_changed
scoreboard players operation #ds_int ds_P_PlayerCount = #ds_int ds_PlayerCount