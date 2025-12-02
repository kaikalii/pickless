execute store result score #random pickless.num run random value 0..3
execute if score #random pickless.num = #0 pickless.num run return run function pickless:obsidian/squish
scoreboard players set @s pickless.can_squish 0