#> Resets the state of the block counter's chunk render cycle

#say reset redner cycle!
scoreboard players operation @s cg_RendLen = #ds_int ds_Rend_Dist
scoreboard players operation @s cg_RendLen *= #ds_int ds_Two
scoreboard players remove @s cg_RendLen 1


scoreboard players operation @s cg_HalfRenderLen = @s cg_RendLen
scoreboard players operation @s cg_HalfRenderLen /= #ds_int ds_Two

scoreboard players operation @s cg_N_HalfRendLen = @s cg_HalfRenderLen
scoreboard players operation @s cg_N_HalfRendLen *= #ds_int ds_Neg1
scoreboard players set @s cg_ZChunk 0
scoreboard players set @s cg_XChunk 0


scoreboard players set @s cg_Dz 0
scoreboard players set @s cg_Dx -1

scoreboard players operation @s cg_RenderSqr = @s cg_RendLen
scoreboard players operation @s cg_RenderSqr *= @s cg_RendLen
scoreboard players operation @s cg_ChunksLeft = @s cg_RenderSqr


# c++ Equavlant
# int cg_RendLen = ds_Rend_Dist * 2 - 1;
# int cg_HalfRenderLen = cg_RendLen/2;
# int cg_TempVar1 = 0;

# int cg_ZChunk = 0;
# int cg_XChunk = 0;
# int cg_Dz = 0;
# int cg_Dx = -1;

# int cg_RenderSqr = cg_RendLen * cg_RendLen;
# int cg_ChunksLeft = cg_RenderSqr;