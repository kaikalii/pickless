# Generic pickaxe replacement macro for villager trades
# Expects: $(material) - the material type (wooden, stone, copper, iron, golden, diamond, netherite)

# Generate random tool choice
execute store result score #random pickless.scan run random value 0..1

# Replace in buy slot (for datapack compatibility)
$execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:$(material)_pickaxe"}}].buy.id set value "minecraft:$(material)_axe"
$execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:$(material)_pickaxe"}}].buy.id set value "minecraft:$(material)_shovel"

# Replace in sell slot
$execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:$(material)_pickaxe"}}].sell.id set value "minecraft:$(material)_axe"
$execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:$(material)_pickaxe"}}].sell.id set value "minecraft:$(material)_shovel"
