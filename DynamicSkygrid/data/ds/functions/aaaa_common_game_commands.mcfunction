

scoreboard players list @e[type=minecraft:armor_stand,limit=1,distance=..2]
data get entity @e[type=minecraft:armor_stand, limit=1, distance=..3]


execute at @e[type=minecraft:armor_stand] run fill ~ ~ ~ ~7 ~255 ~15 minecraft:stone replace
execute at @e[type=minecraft:armor_stand] run fill ~8 ~ ~ ~15 ~255 ~15 minecraft:stone replace