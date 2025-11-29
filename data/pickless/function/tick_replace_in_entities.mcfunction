# Replaces pickaxes in entities with Items NBT (minecarts, boats, donkeys, etc)
# Process each entity once by tagging after handling

execute as @e[tag=!pickless.processed] run function pickless:for_each_material {function:"replace_pickaxe_entity"}
execute as @e[tag=!pickless.processed] run tag @s add pickless.processed

schedule function pickless:tick_replace_in_entities 1s
