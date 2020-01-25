#> Store and calculate cordinate info for each player

execute as @a at @s store result score @s ds_WorldX run data get entity @s Pos[0]
execute as @a at @s store result score @s ds_WorldY run data get entity @s Pos[1]
execute as @a at @s store result score @s ds_WorldZ run data get entity @s Pos[2]