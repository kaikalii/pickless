# Bonemeal used
execute as @a if score @s used_bonemeal > @s last_used_bonemeal run function pickless:bonemeal/on_used
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal

# Replace pickaxe item entities on the ground with random tools
function pickless:for_each_material {function:"replace_pickaxe_drop"}