# Replaces pickaxes in entities with Items NBT (minecarts, boats, donkeys, etc)
# Expects macro vars: $(x), $(y), $(z)

$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:for_each_material {function:"replace_pickaxe_entity"}
