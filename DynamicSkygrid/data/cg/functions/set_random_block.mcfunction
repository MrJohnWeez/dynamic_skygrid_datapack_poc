#> Creates a random block, title entity, or structure at ds_SELECTED_BC armor stand

execute store result entity @s Pos[0] double 1 run scoreboard players get @s cg_WorldX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s ds_LocalY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s cg_WorldZ
execute at @s run setblock ~ ~ ~ minecraft:stone