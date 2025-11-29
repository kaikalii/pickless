# Replaces all pickaxe types within a container at offset
# Expects macro vars: $(x), $(y), $(z)

$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:for_each_material {function:"replace_pickaxe_container"}