execute store result score #random num run random value 0..3
execute if block ~ ~-2 ~ obsidian if score #random num = #0 num run function pickless:obsidian/squish_both
execute unless block ~ ~-2 ~ obsidian if score #random num = #0 num run setblock ~ ~-1 ~ air destroy
scoreboard players set @s pickless.can_squish 0