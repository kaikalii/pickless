execute store result score #random num run random value 0..3
execute if score #random num = #0 num run return run function pickless:obsidian/obsidian_absorb1
execute if score #random num = #1 num run return run function pickless:obsidian/obsidian_absorb2
execute if score #random num = #2 num run return run function pickless:obsidian/obsidian_absorb3
function pickless:obsidian/obsidian_absorb4