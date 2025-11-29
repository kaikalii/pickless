# Generic pickaxe replacement macro
# Expects: $(material) - the material type (wooden, stone, copper, iron, golden, diamond, netherite)

# Generate random tool choice
execute store result score #random pickless.scan run random value 0..1

# Replace in block containers
$execute if data block ~ ~ ~ Items[{id:"minecraft:$(material)_pickaxe"}] if score #random pickless.scan matches 0 run data modify block ~ ~ ~ Items[{id:"minecraft:$(material)_pickaxe"}].id set value "minecraft:$(material)_axe"
$execute if data block ~ ~ ~ Items[{id:"minecraft:$(material)_pickaxe"}] if score #random pickless.scan matches 1 run data modify block ~ ~ ~ Items[{id:"minecraft:$(material)_pickaxe"}].id set value "minecraft:$(material)_shovel"
