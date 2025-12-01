# Replaces pickaxes in entities with Items NBT (minecarts, boats, donkeys, etc)
# Process each entity once by tagging after handling

execute as @e[tag=!pickless.processed] run function pickless:for_each_material {f:"replace/entity/material"}
execute as @e[tag=!pickless.processed] run tag @s add pickless.processed

schedule function pickless:replace/entity/tick 1s
