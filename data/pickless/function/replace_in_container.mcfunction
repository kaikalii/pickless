# Replaces all pickaxe types with random equivalent tools
# Expects macro vars: $(x), $(y), $(z)

$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:for_each_material {function:"replace_pickaxe"}