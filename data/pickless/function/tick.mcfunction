# Bonemeal used
execute as @a if score @s used_bonemeal > @s last_used_bonemeal run function pickless:bonemeal/on_used
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal

# Replace pickaxe item entities on the ground with random tools
function pickless:for_each_material {function:"replace/dropped"}


# Check for gunpowder items on the ground and call handler at their position
execute as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}] at @s run function pickless:gunpowder/on_ground


# Check for diamond items on the ground and call handler at their position
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] at @s run function pickless:diamond/on_ground
