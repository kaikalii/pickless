# Generic pickaxe replacement macro for item entities
# Expects: $(material) - the material type (wooden, stone, copper, iron, golden, diamond, netherite)

# Generate random tool choice if item exists
$execute as @e[type=item,nbt={Item:{id:"minecraft:$(material)_pickaxe"}}] store result score #random pickless.scan run random value 0..1

# Replace item entity
$execute if score #random pickless.scan matches 0 as @e[type=item,nbt={Item:{id:"minecraft:$(material)_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:$(material)_axe"
$execute if score #random pickless.scan matches 1 as @e[type=item,nbt={Item:{id:"minecraft:$(material)_pickaxe"}}] run data modify entity @s Item.id set value "minecraft:$(material)_shovel"
