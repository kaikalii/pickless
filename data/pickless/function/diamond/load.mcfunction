scoreboard objectives add pickless.debris_timer dummy
scoreboard players set #max pickless.debris_timer 60

scoreboard objectives add pickless.debris_present dummy

# Track diamonds being picked up
scoreboard objectives add pickless.diamond minecraft.picked_up:diamond
scoreboard objectives add pickless.last_diamond dummy
execute as @a run scoreboard players operation @s pickless.last_diamond = @s pickless.diamond