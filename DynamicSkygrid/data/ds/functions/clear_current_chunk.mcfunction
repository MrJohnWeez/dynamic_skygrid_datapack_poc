#> Clear the chunk that is selected

# Clear main chunk
execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run fill ~ ~ ~ ~7 ~255 ~15 minecraft:air replace
execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run fill ~8 ~ ~ ~15 ~255 ~15 minecraft:air replace

# Remove water around edge(for oceans)
execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run fill ~-1 ~ ~-1 ~-1 ~255 ~16 minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run fill ~16 ~ ~-1 ~16 ~255 ~16 minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run fill ~ ~ ~-1 ~15 ~255 ~-1 minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run fill ~ ~ ~16 ~15 ~255 ~16 minecraft:air replace minecraft:water

execute at @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run setblock ~ ~ ~ minecraft:purpur_block
execute as @e[type=minecraft:armor_stand, tag=ds_SELECTED_BC, limit=1] run say Cleared chunk!