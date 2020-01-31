#> Itterate through chunks surrounding player, Restart when max render distance is reached

execute if score @s cg_ChunksLeft matches ..0 as @s run function cg:reset_render_cycle

execute if score @s cg_N_HalfRendLen <= @s cg_ZChunk if score @s cg_ZChunk <= @s cg_HalfRenderLen if score @s cg_N_HalfRendLen <= @s cg_XChunk if score @s cg_XChunk <= @s cg_HalfRenderLen as @s run function cg:detect_new_chunk

scoreboard players set @s cg_TempVar1 0
scoreboard players operation @s cg_N_XChunk = @s cg_XChunk
scoreboard players operation @s cg_N_XChunk *= #ds_int ds_Neg1
scoreboard players operation @s cg_TempVar2 = @s cg_N_XChunk
scoreboard players add @s cg_TempVar2 1
execute if score @s cg_ZChunk = @s cg_XChunk run scoreboard players set @s cg_TempVar1 1
execute if score @s cg_TempVar1 matches 0 if score @s cg_ZChunk matches ..-1 if score @s cg_ZChunk = @s cg_N_XChunk run scoreboard players set @s cg_TempVar1 1
execute if score @s cg_TempVar1 matches 0 if score @s cg_ZChunk matches 1.. if score @s cg_ZChunk = @s cg_TempVar2 run scoreboard players set @s cg_TempVar1 1
    execute if score @s cg_TempVar1 matches 1 run scoreboard players operation @s cg_TempVar2 = @s cg_Dz
    execute if score @s cg_TempVar1 matches 1 run scoreboard players operation @s cg_Dz = @s cg_Dx
    execute if score @s cg_TempVar1 matches 1 run scoreboard players operation @s cg_Dz *= #ds_int ds_Neg1
    execute if score @s cg_TempVar1 matches 1 run scoreboard players operation @s cg_Dx = @s cg_TempVar2


scoreboard players operation @s cg_ZChunk += @s cg_Dz
scoreboard players operation @s cg_XChunk += @s cg_Dx

scoreboard players remove @s cg_ChunksLeft 1



# c++ Equivalent
# if ((-cg_HalfRenderLen <= cg_ZChunk) && (cg_ZChunk <= cg_HalfRenderLen) && (-cg_HalfRenderLen <= cg_XChunk) && (cg_XChunk <= cg_HalfRenderLen))
# {
#     GenterateChunk(cg_ZChunk, cg_XChunk);
# }

# if( (cg_ZChunk == cg_XChunk) || ((cg_ZChunk < 0) && (cg_ZChunk == -cg_XChunk)) || ((cg_ZChunk > 0) && (cg_ZChunk == 1-cg_XChunk)))
# {
#     cg_TempVar1 = cg_Dz;
#     cg_Dz = -cg_Dx;
#     cg_Dx = cg_TempVar1;
# }   

# cg_ZChunk += cg_Dz;
# cg_XChunk += cg_Dx;

# cg_ChunksLeft--;