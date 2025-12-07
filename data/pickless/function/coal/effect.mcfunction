execute store result score #random num run random value 0..9
execute if score #random num <= @s pickless.firestart run particle white_smoke ~ ~0.2 ~ 0 0.5 0 0.1 0
execute store result score #random num run random value 0..9
execute if score #random num <= @s pickless.firestart run particle large_smoke ~ ~0.2 ~ 0 0.5 0 0.1 0
execute store result score #random num run random value 0..20
execute if score #random num <= @s pickless.firestart run playsound block.moss.step block @a ~ ~ ~