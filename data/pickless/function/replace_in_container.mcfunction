# Replaces all pickaxe types with random equivalent tools
# Expects macro vars: $(x), $(y), $(z)

$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"wooden"}
$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"stone"}
$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"copper"}
$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"iron"}
$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"golden"}
$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"diamond"}
$execute positioned ~$(x) ~$(y) ~$(z) run function pickless:replace_pickaxe {material:"netherite"}