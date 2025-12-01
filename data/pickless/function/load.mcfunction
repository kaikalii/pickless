# Scan objective
scoreboard objectives add pickless.scan dummy

# Scan radius for containers
scoreboard players set #scan_radius pickless.scan 3

# Number literals
scoreboard players set #-1 pickless.scan -1
scoreboard players set #2 pickless.scan 2

# Calculate scan_total = (2 * scan_radius + 1)^3
scoreboard players operation #scan_diam pickless.scan = #scan_radius pickless.scan
scoreboard players operation #scan_diam pickless.scan *= #2 pickless.scan
scoreboard players add #scan_diam pickless.scan 1
scoreboard players operation #scan_total pickless.scan = #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan

# Clear any lingering scheduled tasks on reload/start
schedule clear pickless:tick_replace_in_player
schedule clear pickless:tick_replace_in_containers
schedule clear pickless:tick_replace_in_entities
schedule clear pickless:tick_replace_drops
schedule clear pickless:tick_replace_trades
schedule clear pickless:tick_clear_entity_tags
schedule clear pickless:tick_bonemeal_detect

# Schedule
schedule function pickless:tick_replace_in_player 1s
schedule function pickless:tick_replace_in_containers 1s
schedule function pickless:tick_replace_in_entities 1s
schedule function pickless:tick_replace_drops 1t
schedule function pickless:tick_replace_trades 1s
schedule function pickless:tick_clear_entity_tags 60s
schedule function pickless:tick_bonemeal_detect 1t

# Bonemeal-used tracking
scoreboard objectives add used_bonemeal minecraft.used:bone_meal
scoreboard objectives add last_used_bonemeal dummy
execute as @a run scoreboard players operation @s last_used_bonemeal = @s used_bonemeal
