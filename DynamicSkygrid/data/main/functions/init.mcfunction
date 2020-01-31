#> (Re)Install the Dynamic Skygrid pack

# Name spaces
#    ds = Dynamic Skygrid
#    cg = Chunk Generation

# Var abriviations
#    bc = block counter
#    ds_P = prev var (for state machines)
#    _N_ = Negative of

function ds:uninstall

# Global constants ---------------------------------------------
scoreboard objectives add ds_ChunkSize dummy
scoreboard players set #ds_int ds_ChunkSize 16

scoreboard objectives add ds_GridGapX dummy
scoreboard players set #ds_int ds_GridGapX 4

scoreboard objectives add ds_GridGapY dummy
scoreboard players set #ds_int ds_GridGapY 4

scoreboard objectives add ds_GridGapZ dummy
scoreboard players set #ds_int ds_GridGapZ 4

scoreboard objectives add ds_MaxGridHeight dummy
scoreboard players set #ds_int ds_MaxGridHeight 100

scoreboard objectives add ds_MinGridHeight dummy
scoreboard players set #ds_int ds_MinGridHeight 0

scoreboard objectives add ds_Rend_Dist dummy
scoreboard players set #ds_int ds_Rend_Dist 5

scoreboard objectives add ds_SlowDownTPS dummy
scoreboard players set #ds_int ds_SlowDownTPS 1

scoreboard objectives add ds_Two dummy
scoreboard players set #ds_int ds_Two 2

scoreboard objectives add ds_Neg1 dummy
scoreboard players set #ds_int ds_Neg1 -1

# Global fake player vars --------------------------------------
scoreboard objectives add ds_TicksSkipped dummy
scoreboard players set #ds_int ds_TicksSkipped 0

scoreboard objectives add ds_Enabled dummy
scoreboard players set #ds_bool ds_Enabled 0

scoreboard objectives add ds_PlayerCount dummy
scoreboard players set #ds_int ds_PlayerCount 0

scoreboard objectives add ds_P_PlayerCount dummy
scoreboard players set #ds_int ds_P_PlayerCount 0

scoreboard objectives add ds_PlayerItter dummy
scoreboard players set #ds_int ds_PlayerItter 0

# Player vars --------------------------------------------------
scoreboard objectives add ds_PlayerID dummy

# World cord vars ----------------------------------------------
scoreboard objectives add ds_WorldX dummy
scoreboard objectives add ds_WorldY dummy
scoreboard objectives add ds_WorldZ dummy

# Non Player vars ----------------------------------------------
scoreboard objectives add ds_BcID dummy
scoreboard objectives add ds_PlacedBlock dummy

# Chunk Calculation vars ---------------------------------------
scoreboard objectives add ds_Chunk_X dummy
scoreboard objectives add ds_Chunk_Z dummy
scoreboard objectives add ds_Chunk_Base_X dummy
scoreboard objectives add ds_Chunk_Base_Z dummy

# Chunk Generation vars ----------------------------------------
scoreboard objectives add cg_RendLen dummy
scoreboard objectives add cg_HalfRenderLen dummy
scoreboard objectives add cg_N_HalfRendLen dummy
scoreboard objectives add cg_XChunk dummy
scoreboard objectives add cg_ZChunk dummy
scoreboard objectives add cg_N_XChunk dummy
scoreboard objectives add cg_ChunksLeft dummy
scoreboard objectives add cg_Dz dummy
scoreboard objectives add cg_Dx dummy
scoreboard objectives add cg_RenderSqr dummy

scoreboard objectives add cg_CordXChunk dummy
scoreboard objectives add cg_CordZChunk dummy

scoreboard objectives add cg_TempVar1 dummy
scoreboard objectives add cg_TempVar2 dummy


# Local Per Chunk Generation vars ------------------------------
scoreboard objectives add ds_LocalX dummy
scoreboard objectives add ds_LocalY dummy
scoreboard objectives add ds_LocalZ dummy

scoreboard objectives add cg_WorldX dummy
scoreboard objectives add cg_WorldZ dummy

scoreboard objectives add ds_FinishedX dummy
scoreboard objectives add ds_FinishedY dummy
scoreboard objectives add ds_FinishedZ dummy
scoreboard objectives add ds_NewChunk dummy



# Start
function ds:enable

# Debug
scoreboard objectives add ds_SIDEBAR dummy
scoreboard objectives setdisplay sidebar ds_SIDEBAR

say Dynamic Skygrid reloaded!

#summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648}




#TODO:
# Restart generation if player moves a chunk
# Optimize the chunk generation?