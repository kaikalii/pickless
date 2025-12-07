execute store result score #random num run random value 0..10
execute if score #random num = #0 num run scoreboard players add @s pickless.firestart 1

execute if score @s pickless.firestart = #10 num run function pickless:coal/start_fire

function pickless:coal/effect

scoreboard players set @s pickless.used_stick 1