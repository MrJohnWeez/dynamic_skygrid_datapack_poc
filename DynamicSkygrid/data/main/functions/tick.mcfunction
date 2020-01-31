#> Main Update Loop at 20tps  ds_TicksSkip


scoreboard players add #ds_int ds_TicksSkipped 1
execute if score #ds_int ds_TicksSkipped >= #ds_int ds_SlowDownTPS run scoreboard players set #ds_int ds_TicksSkipped 0

# Pause all dynamic sygrid when ds_SlowDownTPS == 0
execute if score #ds_int ds_SlowDownTPS matches 0 run scoreboard players set #ds_int ds_TicksSkipped -1

execute if score #ds_int ds_TicksSkipped matches 0 if score #ds_bool ds_Enabled matches 1.. run function ds:player_count
execute if score #ds_int ds_TicksSkipped matches 0 if score #ds_bool ds_Enabled matches 1.. run function ds:gen_world