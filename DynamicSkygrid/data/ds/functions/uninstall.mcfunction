#> Uninstalls the datapack entirly removing all traces

# Remove DS Entities -------------------------------------------
kill @e[type=minecraft:armor_stand,tag=ds_BLOCKCOUNTER]

# Global fake player vars -------------------------------------------
scoreboard objectives remove ds_Enabled
scoreboard objectives remove ds_ChunkSize
scoreboard objectives remove ds_PlayerCount
scoreboard objectives remove ds_P_PlayerCount
scoreboard objectives remove ds_PlayerItter 

# Player cord vars ---------------------------------------------
scoreboard objectives remove ds_WorldX
scoreboard objectives remove ds_WorldY
scoreboard objectives remove ds_WorldZ

# Chunk Generation vars ----------------------------------------
scoreboard objectives remove ds_Chunk_X
scoreboard objectives remove ds_Chunk_Z
scoreboard objectives remove ds_Chunk_Base_X
scoreboard objectives remove ds_Chunk_Base_Z
scoreboard objectives remove ds_PlayerID

# Player Tags --------------------------------------------------
tag @e[tag=ds_VARSINIT] remove ds_VARSINIT

# Non-Player vars ----------------------------------------------
scoreboard objectives remove ds_BcID

# Non-Player Tags ----------------------------------------------
tag @e[tag=ds_PLAYER_NULL] remove ds_PLAYER_NULL
tag @e[tag=ds_BLOCKCOUNTER] remove ds_BLOCKCOUNTER

# Debug messages -----------------------------------------------
scoreboard objectives remove ds_Debug