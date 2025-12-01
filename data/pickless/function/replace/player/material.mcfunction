# Generic pickaxe replacement macro for player inventory
# Expects: $(material) - the material type (wooden, stone, copper, iron, golden, diamond, netherite)

# Generate random tool choice if player has pickaxe
$execute as @a[nbt={Inventory:[{id:"minecraft:$(material)_pickaxe"}]}] store result score #random pickless.scan run random value 0..1

# Give replacement tool and clear pickaxe
$execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:$(material)_pickaxe"}]}] run give @s $(material)_axe
$execute if score #random pickless.scan matches 0 as @a run clear @s $(material)_pickaxe
$execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:$(material)_pickaxe"}]}] run give @s $(material)_shovel
$execute if score #random pickless.scan matches 1 as @a run clear @s $(material)_pickaxe
