# Replaces pickaxes in entities with Items NBT (minecarts, boats, donkeys, etc)
# Expects macro vars: $(x), $(y), $(z)

$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"wooden"}
$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"stone"}
$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"copper"}
$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"iron"}
$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"golden"}
$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"diamond"}
$execute positioned ~$(x) ~$(y) ~$(z) as @e[dx=0,dy=0,dz=0] run function pickless:replace_pickaxe_entity {material:"netherite"}
