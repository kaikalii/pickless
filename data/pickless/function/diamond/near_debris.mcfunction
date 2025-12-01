# Increment timer
scoreboard players add @s pickless.debris_timer 1
scoreboard players set @s pickless.debris_present 1

# Effect
function pickless:diamond/effect

# Break debris if necessary
execute if score @s pickless.debris_timer >= #max pickless.debris_timer run execute unless entity @s[tag=broke_debris] run function pickless:diamond/break_debris