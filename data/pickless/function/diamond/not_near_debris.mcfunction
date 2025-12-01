# Increment timer
scoreboard players remove @s pickless.debris_timer 2
execute if score @s pickless.debris_timer < #0 pickless.num run scoreboard players set @s pickless.debris_timer 0

# Effect
execute if score @s pickless.debris_timer > #0 pickless.num run function pickless:diamond/effect