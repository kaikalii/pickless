# Replaces pickaxes in entities with Items NBT (minecarts, boats, donkeys, etc)

execute as @e run function pickless:for_each_material {function:"replace_pickaxe_entity"}

schedule function pickless:tick_replace_in_entities 1s
