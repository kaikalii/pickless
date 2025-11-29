# Replace pickaxes in villager trade offers with random tools

# Wooden pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:wooden_pickaxe"}}].buy.id set value "minecraft:wooden_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:wooden_pickaxe"}}].sell.id set value "minecraft:wooden_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:wooden_pickaxe"}}].buy.id set value "minecraft:wooden_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:wooden_pickaxe"}}].sell.id set value "minecraft:wooden_shovel"

# Stone pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:stone_pickaxe"}}].buy.id set value "minecraft:stone_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:stone_pickaxe"}}].sell.id set value "minecraft:stone_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:stone_pickaxe"}}].buy.id set value "minecraft:stone_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:stone_pickaxe"}}].sell.id set value "minecraft:stone_shovel"

# Copper pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:copper_pickaxe"}}].buy.id set value "minecraft:copper_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:copper_pickaxe"}}].sell.id set value "minecraft:copper_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:copper_pickaxe"}}].buy.id set value "minecraft:copper_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:copper_pickaxe"}}].sell.id set value "minecraft:copper_shovel"

# Iron pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:iron_pickaxe"}}].buy.id set value "minecraft:iron_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:iron_pickaxe"}}].sell.id set value "minecraft:iron_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:iron_pickaxe"}}].buy.id set value "minecraft:iron_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:iron_pickaxe"}}].sell.id set value "minecraft:iron_shovel"

# Golden pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:golden_pickaxe"}}].buy.id set value "minecraft:golden_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:golden_pickaxe"}}].sell.id set value "minecraft:golden_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:golden_pickaxe"}}].buy.id set value "minecraft:golden_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:golden_pickaxe"}}].sell.id set value "minecraft:golden_shovel"

# Diamond pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:diamond_pickaxe"}}].buy.id set value "minecraft:diamond_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:diamond_pickaxe"}}].sell.id set value "minecraft:diamond_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:diamond_pickaxe"}}].buy.id set value "minecraft:diamond_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:diamond_pickaxe"}}].sell.id set value "minecraft:diamond_shovel"

# Netherite pickaxe
execute store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:netherite_pickaxe"}}].buy.id set value "minecraft:netherite_axe"
execute if score #random pickless.scan matches 0 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:netherite_pickaxe"}}].sell.id set value "minecraft:netherite_axe"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:netherite_pickaxe"}}].buy.id set value "minecraft:netherite_shovel"
execute if score #random pickless.scan matches 1 as @e[type=villager] run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:netherite_pickaxe"}}].sell.id set value "minecraft:netherite_shovel"

schedule function pickless:tick_replace_trades 1s
