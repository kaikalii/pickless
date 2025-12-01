# Scan objective
scoreboard objectives add pickless.scan dummy

# Scan radius for containers
scoreboard players set #scan_radius pickless.scan 3

# Calculate scan_total = (2 * scan_radius + 1)^3
scoreboard players operation #scan_diam pickless.scan = #scan_radius pickless.scan
scoreboard players operation #scan_diam pickless.scan *= #2 pickless.num
scoreboard players add #scan_diam pickless.scan 1
scoreboard players operation #scan_total pickless.scan = #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan

function pickless:forever {f:"replace/player/tick", t:1s}
function pickless:forever {f:"replace/container/tick", t:1s}
function pickless:forever {f:"replace/entity/tick", t:1s}
function pickless:forever {f:"replace/trade/tick", t:1s}
function pickless:forever {f:"replace/entity/tick_clear_tags", t:60s}
