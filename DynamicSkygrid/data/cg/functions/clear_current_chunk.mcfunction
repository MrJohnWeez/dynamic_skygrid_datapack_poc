#> Clear the chunk that is selected

# Clear main chunk
execute at @s run fill ~ ~ ~ ~7 ~255 ~15 minecraft:air replace
execute at @s run fill ~8 ~ ~ ~15 ~255 ~15 minecraft:air replace

# Remove water around edge(for oceans)
execute at @s run fill ~-1 ~ ~-1 ~-1 ~255 ~16 minecraft:air replace minecraft:water
execute at @s run fill ~16 ~ ~-1 ~16 ~255 ~16 minecraft:air replace minecraft:water
execute at @s run fill ~ ~ ~-1 ~15 ~255 ~-1 minecraft:air replace minecraft:water
execute at @s run fill ~ ~ ~16 ~15 ~255 ~16 minecraft:air replace minecraft:water

# Remove water around edge(for lava lakes/pokets)
execute at @s run fill ~-1 ~ ~-1 ~-1 ~255 ~16 minecraft:air replace minecraft:lava
execute at @s run fill ~16 ~ ~-1 ~16 ~255 ~16 minecraft:air replace minecraft:lava
execute at @s run fill ~ ~ ~-1 ~15 ~255 ~-1 minecraft:air replace minecraft:lava
execute at @s run fill ~ ~ ~16 ~15 ~255 ~16 minecraft:air replace minecraft:lava
execute at @s run setblock ~ ~ ~ minecraft:purpur_block
execute as @s run say Cleared chunk!