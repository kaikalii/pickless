# Replace pickaxe item entities on the ground with random tools

# Wooden pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:wooden_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:wooden_shovel"

# Stone pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:stone_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:stone_shovel"

# Copper pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:copper_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:copper_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:copper_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:copper_shovel"

# Iron pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:iron_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:iron_shovel"

# Golden pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:golden_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:golden_shovel"

# Diamond pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:diamond_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:diamond_shovel"

# Netherite pickaxe
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:netherite_axe"
execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:netherite_shovel"

schedule function pickless:tick_replace_drops 1t
