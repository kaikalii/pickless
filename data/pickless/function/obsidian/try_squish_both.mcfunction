execute store result score #random num run random value 0..3
execute if score #random num = #0 num run return run function pickless:obsidian/squish_both
scoreboard players set @s pickless.can_squish 0