# Wooden pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] run give @s wooden_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] run clear @s wooden_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] run give @s wooden_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] run clear @s wooden_pickaxe

# Stone pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] run give @s stone_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] run clear @s stone_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] run give @s stone_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] run clear @s stone_pickaxe

# Copper pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:copper_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:copper_pickaxe"}]}] run give @s copper_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:copper_pickaxe"}]}] run clear @s copper_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:copper_pickaxe"}]}] run give @s copper_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:copper_pickaxe"}]}] run clear @s copper_pickaxe

# Iron pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run give @s iron_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run clear @s iron_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run give @s iron_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run clear @s iron_pickaxe

# Golden pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] run give @s golden_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] run clear @s golden_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] run give @s golden_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:golden_pickaxe"}]}] run clear @s golden_pickaxe

# Diamond pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run give @s diamond_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run clear @s diamond_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run give @s diamond_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run clear @s diamond_pickaxe

# Netherite pickaxe
execute as @a[nbt={Inventory:[{id:"minecraft:netherite_pickaxe"}]}] store result score #random pickless.scan run random value 0..1
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:netherite_pickaxe"}]}] run give @s netherite_axe
execute if score #random pickless.scan matches 0 as @a[nbt={Inventory:[{id:"minecraft:netherite_pickaxe"}]}] run clear @s netherite_pickaxe
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:netherite_pickaxe"}]}] run give @s netherite_shovel
execute if score #random pickless.scan matches 1 as @a[nbt={Inventory:[{id:"minecraft:netherite_pickaxe"}]}] run clear @s netherite_pickaxe

schedule function pickless:tick_replace_in_player 1s
