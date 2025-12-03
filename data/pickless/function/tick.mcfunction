# Random tick
scoreboard players set @a pickless.tick_i 0
execute as @a at @s run function pickless:random_tick_player

# Replace pickaxe item entities on the ground with random tools
function pickless:for_each_material {f:"replace/dropped"}

# Other features' tick functions
function pickless:bonemeal/tick
function pickless:iron/tick
function pickless:gold/tick
function pickless:obsidian/tick
function pickless:debris/tick

# execute as @a at @s positioned ~ ~1.62 ~ positioned ^ ^ ^5 run particle electric_spark