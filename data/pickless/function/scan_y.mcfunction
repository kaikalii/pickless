scoreboard players set #z pickless.scan 0
scoreboard players operation #z pickless.scan -= #scan_radius pickless.scan

function pickless:scan_z

scoreboard players add #y pickless.scan 1
execute if score #y pickless.scan <= #scan_radius pickless.scan run function pickless:scan_y
