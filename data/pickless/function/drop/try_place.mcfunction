# Item must have a thrower
execute store success score #temp num run data get entity @s Thrower
execute if score #temp num = #0 num run return run function pickless:util/do_nothing
# Can't be transparent below
execute if block ~ ~-1 ~ #pickless:transparent run return run function pickless:util/do_nothing
# Special cases
execute as @e[nbt={Item:{id:"minecraft:redstone"}}] run return run function pickless:drop/place {CustomName:"redstone_wire"}

data modify entity @s CustomName set from entity @s Item.id
function pickless:drop/place with entity @s
