#> (Re)Install the Dynamic Skygrid pack
#ds = dynamic skygrid
#bc = block counter
#ds_P = prev var (for state machines)


say Dynamic Skygrid reloaded!

function ds:uninstall

# Global fake player vars -------------------------------------------
scoreboard objectives add ds_Enabled dummy
scoreboard players set #ds_bool ds_Enabled 0

scoreboard objectives add ds_ChunkSize dummy
scoreboard players set #ds_int ds_ChunkSize 16

scoreboard objectives add ds_PlayerCount dummy
scoreboard players set #ds_int ds_PlayerCount 0

scoreboard objectives add ds_P_PlayerCount dummy
scoreboard players set #ds_int ds_P_PlayerCount 0

scoreboard objectives add ds_PlayerItter dummy
scoreboard players set #ds_int ds_PlayerItter 0


scoreboard objectives add ds_TempVar1 dummy
scoreboard players set #ds_int ds_TempVar1 228

scoreboard objectives add ds_TempVar2 dummy
scoreboard players set #ds_int ds_TempVar2 72

scoreboard objectives add ds_TempVar3 dummy
scoreboard players set #ds_int ds_TempVar3 -124

# Debug messages -----------------------------------------------
scoreboard objectives add ds_Debug dummy
scoreboard players set #ds_int ds_Debug 1

# Player cord vars ---------------------------------------------
scoreboard objectives add ds_X dummy
scoreboard objectives add ds_Y dummy
scoreboard objectives add ds_Z dummy

# Chunk Generation vars ----------------------------------------
scoreboard objectives add ds_Chunk_X dummy
scoreboard objectives add ds_Chunk_Z dummy
scoreboard objectives add ds_Chunk_Base_X dummy
scoreboard objectives add ds_Chunk_Base_Z dummy
scoreboard objectives add ds_PlayerID dummy

# Non Player vars
scoreboard objectives add ds_BcID dummy
scoreboard objectives add ds_PlacedBlock dummy

#Start
function ds:enable

#debug
scoreboard objectives setdisplay sidebar ds_Chunk_Base_X