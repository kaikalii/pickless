# Generic pickaxe replacement macro for entities
# Expects: $(material) - the material type (wooden, stone, copper, iron, golden, diamond, netherite)

# Generate random tool choice if pickaxe exists
$execute if data entity @s Items[{id:"minecraft:$(material)_pickaxe"}] store result score #random pickless.scan run random value 0..1

# Replace in entity
$execute if score #random pickless.scan matches 0 if data entity @s Items[{id:"minecraft:$(material)_pickaxe"}] run data modify entity @s Items[{id:"minecraft:$(material)_pickaxe"}].id set value "minecraft:$(material)_axe"
$execute if score #random pickless.scan matches 1 if data entity @s Items[{id:"minecraft:$(material)_pickaxe"}] run data modify entity @s Items[{id:"minecraft:$(material)_pickaxe"}].id set value "minecraft:$(material)_shovel"
