# Calculate total iterations needed: (2 * scan_radius + 1)^3
# This function iterates through all positions in the scan area

# Derive x, y, and z from the scan counter
# x = (scan % diam) + offset
scoreboard players operation #x pickless.scan = @s pickless.scan
scoreboard players operation #x pickless.scan %= #scan_diam pickless.scan
scoreboard players operation #temp pickless.scan = #scan_radius pickless.scan
scoreboard players operation #temp pickless.scan *= #-1 num
scoreboard players operation #x pickless.scan += #temp pickless.scan
# y = ((scan / diam) % diam) + offset
scoreboard players operation #y pickless.scan = @s pickless.scan
scoreboard players operation #y pickless.scan /= #scan_diam pickless.scan
scoreboard players operation #y pickless.scan %= #scan_diam pickless.scan
scoreboard players operation #y pickless.scan += #temp pickless.scan
# z = (scan / (diam * diam)) + offset
scoreboard players operation #z pickless.scan = @s pickless.scan
scoreboard players operation #z pickless.scan /= #scan_diam pickless.scan
scoreboard players operation #z pickless.scan /= #scan_diam pickless.scan
scoreboard players operation #z pickless.scan += #temp pickless.scan

# Store offsets into storage for macro usage
execute store result storage pickless:vars x int 1 run scoreboard players get #x pickless.scan
execute store result storage pickless:vars y int 1 run scoreboard players get #y pickless.scan
execute store result storage pickless:vars z int 1 run scoreboard players get #z pickless.scan

# Remove pickaxes from container at this offset
execute at @s run function pickless:replace/container/materials with storage pickless:vars

# Increment counter
scoreboard players add @s pickless.scan 1

# Continue if we haven't scanned all positions yet
execute if score @s pickless.scan < #scan_total pickless.scan run function pickless:replace/container/offset_iter
