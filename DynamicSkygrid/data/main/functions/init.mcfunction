#> (Re)Install the Dynamic Skygrid pack
#ds = dynamic skygrid
#bc = block counter
#ds_P = prev var (for state machines)

function ds:uninstall

# Global constants ---------------------------------------------
scoreboard objectives add ds_ChunkSize dummy
scoreboard players set #ds_int ds_ChunkSize 16

scoreboard objectives add ds_Rend_Dist dummy
scoreboard players set #ds_int ds_Rend_Dist 2

# Global fake player vars --------------------------------------
scoreboard objectives add ds_Enabled dummy
scoreboard players set #ds_bool ds_Enabled 0

scoreboard objectives add ds_PlayerCount dummy
scoreboard players set #ds_int ds_PlayerCount 0

scoreboard objectives add ds_P_PlayerCount dummy
scoreboard players set #ds_int ds_P_PlayerCount 0

scoreboard objectives add ds_PlayerItter dummy
scoreboard players set #ds_int ds_PlayerItter 0

# Temp vars ----------------------------------------------------
scoreboard objectives add ds_TempVar1 dummy
scoreboard players set #ds_int ds_TempVar1 0

scoreboard objectives add ds_TempVar2 dummy
scoreboard players set #ds_int ds_TempVar2 0

scoreboard objectives add ds_TempVar3 dummy
scoreboard players set #ds_int ds_TempVar3 0

# Debug messages -----------------------------------------------
scoreboard objectives add ds_Debug dummy
scoreboard players set #ds_int ds_Debug 1

# Player vars --------------------------------------------------
scoreboard objectives add ds_PlayerID dummy

# World cord vars ----------------------------------------------
scoreboard objectives add ds_WorldX dummy
scoreboard objectives add ds_WorldY dummy
scoreboard objectives add ds_WorldZ dummy

# Non Player vars ----------------------------------------------
scoreboard objectives add ds_BcID dummy
scoreboard objectives add ds_PlacedBlock dummy

# Chunk Generation vars ----------------------------------------
scoreboard objectives add ds_Chunk_X dummy
scoreboard objectives add ds_Chunk_Z dummy
scoreboard objectives add ds_Chunk_Base_X dummy
scoreboard objectives add ds_Chunk_Base_Z dummy
scoreboard objectives add ds_EdRenderCycle dummy
scoreboard objectives add ds_PosiChunks dummy
scoreboard objectives add ds_CurrRendDist dummy
scoreboard objectives add ds_MaxXZChunk dummy
scoreboard objectives add ds_CurrXChunk dummy
scoreboard objectives add ds_CurrZChunk dummy
scoreboard objectives add ds_NewChunk dummy


# Start
function ds:enable

# Debug
scoreboard objectives setdisplay sidebar ds_WorldX

say Dynamic Skygrid reloaded!