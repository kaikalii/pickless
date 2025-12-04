scoreboard players set #y pickless.scan 0
scoreboard players operation #y pickless.scan -= #scan_radius pickless.scan

function pickless:scan_y

scoreboard players add #x pickless.scan 1
$execute if score #x pickless.scan $(cond) run function pickless:scan_x {cond:"$(cond)"}
