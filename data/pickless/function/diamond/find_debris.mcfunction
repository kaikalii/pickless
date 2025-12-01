# Find debris
execute if block ~ ~ ~ ancient_debris run function pickless:diamond/near_debris

# Clear adjacent light
execute if score @s debris_timer > #0 pickless.num run execute if block ~ ~ ~ light run setblock ~ ~ ~ air