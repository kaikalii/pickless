# Random tick
scoreboard players set @a pickless.tick_i 0
execute as @a at @s run function pickless:random_tick_player

# Replace pickaxe item entities on the ground with random tools
function pickless:for_each_material {f:"replace/dropped"}

# Other features' tick functions
function pickless:bonemeal/tick
function pickless:iron/tick
function pickless:obsidian/tick
function pickless:diamond/tick
