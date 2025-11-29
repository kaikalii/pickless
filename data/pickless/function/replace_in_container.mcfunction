# Replaces all pickaxe types with random equivalent tools
# Expects macro vars: $(x), $(y), $(z)

# Wooden pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:wooden_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickless.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:wooden_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:wooden_pickaxe"}].id set value "minecraft:wooden_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:wooden_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:wooden_pickaxe"}].id set value "minecraft:wooden_shovel"

# Stone pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:stone_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickles.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:stone_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:stone_pickaxe"}].id set value "minecraft:stone_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:stone_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:stone_pickaxe"}].id set value "minecraft:stone_shovel"

# Copper pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:copper_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickless.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:copper_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:copper_pickaxe"}].id set value "minecraft:copper_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:copper_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:copper_pickaxe"}].id set value "minecraft:copper_shovel"

# Iron pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:iron_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickless.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:iron_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:iron_pickaxe"}].id set value "minecraft:iron_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:iron_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:iron_pickaxe"}].id set value "minecraft:iron_shovel"

# Golden pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:golden_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickless.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:golden_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:golden_pickaxe"}].id set value "minecraft:golden_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:golden_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:golden_pickaxe"}].id set value "minecraft:golden_shovel"

# Diamond pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:diamond_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickless.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:diamond_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:diamond_pickaxe"}].id set value "minecraft:diamond_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:diamond_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:diamond_pickaxe"}].id set value "minecraft:diamond_shovel"

# Netherite pickaxe
$execute if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:netherite_pickaxe"}] store result score #random pickless.scan run random value 0..1
$execute if score #random pickless.scan matches 0 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:netherite_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:netherite_pickaxe"}].id set value "minecraft:netherite_axe"
$execute if score #random pickless.scan matches 1 if data block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:netherite_pickaxe"}] run data modify block ~$(x) ~$(y) ~$(z) Items[{id:"minecraft:netherite_pickaxe"}].id set value "minecraft:netherite_shovel"