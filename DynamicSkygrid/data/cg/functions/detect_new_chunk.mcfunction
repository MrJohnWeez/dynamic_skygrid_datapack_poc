#> Detect if a new chunk is generated and if it was convert it to skygrid terrain

execute as @s run function cg:move_block_counter_to_gen_chunk

# If a new chunk is found clear it out and generate the skygrid
scoreboard players set @s ds_NewChunk 0
execute as @s store success score @s ds_NewChunk at @s run setblock ~ ~ ~ minecraft:purpur_block replace
    execute if score @s ds_NewChunk matches 1 as @s run function cg:clear_current_chunk
    execute if score @s ds_NewChunk matches 1 as @s run function cg:skygrid_current_chunk
    execute if score @s ds_NewChunk matches 1 as @s run function cg:move_block_counter_to_gen_chunk
    execute at @s run setblock ~ ~ ~ minecraft:purpur_block replace

# Clean up tags and scores
scoreboard players set @s ds_NewChunk 0