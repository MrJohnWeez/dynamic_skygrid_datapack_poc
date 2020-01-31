#> Uninstalls the datapack entirly removing all traces

# Remove DS Entities -------------------------------------------
kill @e[type=minecraft:armor_stand,tag=ds_BLOCKCOUNTER]

# Global constants ---------------------------------------------
scoreboard objectives remove ds_ChunkSize
scoreboard objectives remove ds_GridGapX 
scoreboard objectives remove ds_GridGapY 
scoreboard objectives remove ds_GridGapZ 
scoreboard objectives remove ds_MaxGridHeight 
scoreboard objectives remove ds_MinGridHeight 
scoreboard objectives remove ds_Rend_Dist 
scoreboard objectives remove ds_Two 
scoreboard objectives remove ds_Neg1 
scoreboard objectives remove ds_Enabled 
scoreboard objectives remove ds_PlayerCount 
scoreboard objectives remove ds_P_PlayerCount 
scoreboard objectives remove ds_PlayerItter 
scoreboard objectives remove ds_PlayerID 
scoreboard objectives remove ds_WorldX 
scoreboard objectives remove ds_WorldY 
scoreboard objectives remove ds_WorldZ 
scoreboard objectives remove ds_BcID 
scoreboard objectives remove ds_PlacedBlock 
scoreboard objectives remove ds_Chunk_X 
scoreboard objectives remove ds_Chunk_Z 
scoreboard objectives remove ds_Chunk_Base_X 
scoreboard objectives remove ds_Chunk_Base_Z 
scoreboard objectives remove cg_RendLen 
scoreboard objectives remove cg_HalfRenderLen 
scoreboard objectives remove cg_N_HalfRendLen 
scoreboard objectives remove cg_XChunk 
scoreboard objectives remove cg_ZChunk 
scoreboard objectives remove cg_N_XChunk 
scoreboard objectives remove cg_ChunksLeft 
scoreboard objectives remove cg_Dz 
scoreboard objectives remove cg_Dx 
scoreboard objectives remove cg_RenderSqr 
scoreboard objectives remove cg_CordXChunk 
scoreboard objectives remove cg_CordZChunk 
scoreboard objectives remove cg_TempVar1 
scoreboard objectives remove cg_TempVar2 
scoreboard objectives remove ds_LocalX 
scoreboard objectives remove ds_LocalY 
scoreboard objectives remove ds_LocalZ 
scoreboard objectives remove cg_WorldX 
scoreboard objectives remove cg_WorldZ 
scoreboard objectives remove ds_FinishedX 
scoreboard objectives remove ds_FinishedY 
scoreboard objectives remove ds_FinishedZ 
scoreboard objectives remove ds_NewChunk 

# Player Tags --------------------------------------------------
tag @e[tag=ds_VARSINIT] remove ds_VARSINIT

# Non-Player Tags ----------------------------------------------
tag @e[tag=ds_PLAYER_NULL] remove ds_PLAYER_NULL
tag @e[tag=ds_BLOCKCOUNTER] remove ds_BLOCKCOUNTER