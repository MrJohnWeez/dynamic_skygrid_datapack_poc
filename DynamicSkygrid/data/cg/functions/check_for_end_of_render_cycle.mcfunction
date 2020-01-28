#> Checks to see if render cycle should be reset or next ring should be calcualted

execute if score @s ds_CurrRendDist = #ds_int ds_Rend_Dist as @s run scoreboard players set @s ds_RenderCycleEd 1
execute if score @s ds_CurrRendDist < #ds_int ds_Rend_Dist as @s run scoreboard players add @s ds_CurrRendDist 1