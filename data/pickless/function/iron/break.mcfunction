execute store result score #temp num run data get entity @s Item.count
scoreboard players remove #temp num 1
execute if score #temp num = #0 num run kill @s
execute store result entity @s Item.count byte 1 run scoreboard players get #temp num
setblock ~ ~ ~ air destroy