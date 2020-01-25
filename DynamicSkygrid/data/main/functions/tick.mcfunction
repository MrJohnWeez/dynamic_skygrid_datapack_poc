#> Main Update Loop at 20tps

execute if score #ds_bool ds_Enabled matches 1.. run function ds:player_count
execute if score #ds_bool ds_Enabled matches 1.. run function ds:gen_world