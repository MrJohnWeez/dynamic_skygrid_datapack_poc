#> Itterates through chunk Y teleporting the block counter armor stand

scoreboard players set @s ds_LocalZ 0
execute as @s run function cg:scan_chunk_z

scoreboard players operation @s ds_LocalY += #ds_int ds_GridGapY
scoreboard players operation @s ds_FinishedY = #ds_int ds_MaxGridHeight
scoreboard players operation @s ds_FinishedY -= @s ds_LocalY

# If the max height has not been reached generate xz layer
execute if score @s ds_FinishedY matches 1.. as @s run function cg:scan_chunk_y

