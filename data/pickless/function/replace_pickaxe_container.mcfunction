# Macro to replace pickaxes in a block container at current position
# Expects macro var: $(material)

# Replace matching pickaxe IDs with axe or shovel; choose axe by default
# Note: This operates on block entity Items list

$execute if data block ~ ~ ~ {Items:[{id:"minecraft:$(material)_pickaxe"}]} run data modify block ~ ~ ~ Items[{id:"minecraft:$(material)_pickaxe"}].id set value "minecraft:$(material)_axe"
