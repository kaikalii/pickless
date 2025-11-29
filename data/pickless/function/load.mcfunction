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

schedule function pickless:tick_remove_from_player 1s
schedule function pickless:tick_replace_in_containers 1s
schedule function pickless:tick_replace_drops 1t
schedule function pickless:tick_replace_trades 1s
