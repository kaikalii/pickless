# Removes all pickaxe types from container at relative offsets
# Expects macro vars: $(x), $(y), $(z)

$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:wooden_pickaxe"}]
$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:stone_pickaxe"}]
$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:copper_pickaxe"}]
$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:iron_pickaxe"}]
$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:golden_pickaxe"}]
$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:diamond_pickaxe"}]
$data remove block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:netherite_pickaxe"}]
