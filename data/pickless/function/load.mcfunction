# tellraw @a {text:"Loaded Pickless"}
# Number literals
scoreboard objectives add num dummy
scoreboard players set #-1 num -1
scoreboard players set #0 num 0
scoreboard players set #1 num 1
scoreboard players set #2 num 2
scoreboard players set #3 num 3
scoreboard players set #4 num 4
scoreboard players set #5 num 5
scoreboard players set #6 num 6
scoreboard players set #7 num 7
scoreboard players set #8 num 8
scoreboard players set #9 num 9
scoreboard players set #10 num 10
scoreboard players set #15 num 15
scoreboard players set #16 num 16
scoreboard players set #20 num 20
scoreboard players set #40 num 40
scoreboard players set #50 num 50
scoreboard players set #80 num 80
scoreboard players set #90 num 90
scoreboard players set #100 num 100
scoreboard players set #150 num 150
scoreboard players set #200 num 200

# Random ticking
scoreboard objectives add pickless.tick_i dummy

# Scan objective
scoreboard objectives add pickless.scan dummy

# Scan radius
scoreboard players set #scan_radius pickless.scan 3

# Calculate scan_total = (2 * scan_radius + 1)^3
scoreboard players operation #scan_diam pickless.scan = #scan_radius pickless.scan
scoreboard players operation #scan_diam pickless.scan *= #2 num
scoreboard players add #scan_diam pickless.scan 1
scoreboard players operation #scan_total pickless.scan = #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan
scoreboard players operation #scan_total pickless.scan *= #scan_diam pickless.scan

# Debugging
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy

# Load
function pickless:bonemeal/load
function pickless:debris/load
function pickless:replace/load
function pickless:obsidian/load
function pickless:lapis/load
