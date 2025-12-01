# Scan objective
scoreboard objectives add pickless.scan dummy
scoreboard objectives add pickless.num dummy

# Scan radius for containers
scoreboard players set #scan_radius pickless.scan 3

# Number literals
scoreboard players set #0 pickless.num 0
scoreboard players set #-1 pickless.num -1
scoreboard players set #2 pickless.num 2
scoreboard players set #15 pickless.num 15
scoreboard players set #16 pickless.num 16
scoreboard players set #20 pickless.num 20
scoreboard players set #100 pickless.num 100

# Calculate scan_total = (2 * scan_radius + 1)^3
scoreboard players operation #scan_diam pickless.scan = #scan_radius pickless.scan
scoreboard players operation #scan_diam pickless.scan *= #2 pickless.num
scoreboard players add #scan_diam pickless.scan 1
scoreboard players operation #scan_total pickless.scan = #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan

# Bonemeal-used tracking
scoreboard objectives add used_bonemeal minecraft.used:bone_meal
scoreboard objectives add last_used_bonemeal dummy
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal

# Timer for diamonds next to ancient debris
scoreboard objectives add pickless.debris_timer dummy
scoreboard players set #max pickless.debris_timer 60

# Clear any lingering scheduled tasks on reload/start
schedule clear pickless:replace/player/tick
schedule clear pickless:replace/container/tick
schedule clear pickless:replace/entity/tick
schedule clear pickless:replace/trade/tick
schedule clear pickless:replace/entity/tick_clear_tags

# Schedule
schedule function pickless:replace/player/tick 1s
schedule function pickless:replace/container/tick 1s
schedule function pickless:replace/entity/tick 1s
schedule function pickless:replace/trade/tick 1s
schedule function pickless:replace/entity/tick_clear_tags 60s
