execute at @s run playsound entity.creeper.hurt block @a ~ ~ ~ 1 2
execute at @s run playsound block.furnace.fire_crackle block @a ~ ~ ~ 1 2
execute at @s run playsound block.lava.pop block @a ~ ~ ~ 1 2
execute at @s run particle electric_spark ~ ~0.2 ~ 0.2 0.2 0.2 0.5 1
execute store result score #random num run random value 0..20
execute if score #random num = #0 num run function pickless:iron/break