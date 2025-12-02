execute store result score #random pickless.num run random value 0..3
execute if score #random pickless.num = #0 pickless.num run return run function pickless:obsidian/obsidian_absorb1
execute if score #random pickless.num = #1 pickless.num run return run function pickless:obsidian/obsidian_absorb2
execute if score #random pickless.num = #2 pickless.num run return run function pickless:obsidian/obsidian_absorb3
function pickless:obsidian/obsidian_absorb4