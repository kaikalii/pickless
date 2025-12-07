# Make bowls useable by adding a consumable component

# Main hand: if the selected item is a bowl, apply the item modifier
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:bowl"}}] run item modify entity @s weapon.mainhand pickless:make_consumable_brush
