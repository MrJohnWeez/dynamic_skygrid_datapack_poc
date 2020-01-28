#> Itterate through chunks surrounding player, Restart when max render distance is reached

# execute if score @s ds_RenderCycleEd matches 1 as @s run function cg:reset_render_cycle

# execute if score @s ds_MaxXZChunk matches 0 as @s run function cg:calculate_max_xz_chunk

# execute if score @s ds_CurrXChunk matches 0 if score @s ds_CurrZChunk <= @s ds_MaxXZChunk unless score @s ds_PosiChunks matches 1 as @s run scoreboard players add @s ds_CurrZChunk 1

# execute if score @s ds_CurrXChunk <= @s ds_MaxXZChunk if score @s ds_CurrZChunk = @s ds_MaxXZChunk unless score @s ds_PosiChunks matches 1 as @s run scoreboard players add @s ds_CurrXChunk 1

# execute if score @s ds_CurrXChunk = @s ds_MaxXZChunk if score @s ds_CurrZChunk matches 1.. if score @s ds_PosiChunks matches 1 as @s run scoreboard players add @s ds_CurrZChunk -1

# execute if score @s ds_CurrXChunk matches 1.. if score @s ds_CurrZChunk matches 1.. if score @s ds_PosiChunks matches 1 as @s run scoreboard players add @s ds_CurrXChunk -1

# execute if score @s ds_CurrXChunk matches 0 if score @s ds_CurrZChunk matches 0 if score @s ds_PosiChunks matches 1 as @s run function cg:check_for_end_of_render_cycle






# Need to make detect_new_chunk work with these new vars



# Select correct block counter and player
execute as @s run function cg:detect_new_chunk