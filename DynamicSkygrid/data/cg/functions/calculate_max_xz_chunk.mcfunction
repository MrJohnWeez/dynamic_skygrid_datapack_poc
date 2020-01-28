#> Calculate the new max xz chunk amount

scoreboard players operation @s ds_MaxXZChunk = @s ds_CurrRendDist
scoreboard players operation @s ds_MaxXZChunk *= #ds_int ds_Two
scoreboard players add @s ds_MaxXZChunk -1