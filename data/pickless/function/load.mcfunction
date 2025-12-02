# Number literals
scoreboard objectives add num dummy
scoreboard players set #-1 num -1
scoreboard players set #0 num 0
scoreboard players set #1 num 1
scoreboard players set #2 num 2
scoreboard players set #10 num 10
scoreboard players set #15 num 15
scoreboard players set #16 num 16
scoreboard players set #20 num 20
scoreboard players set #80 num 80
scoreboard players set #90 num 90
scoreboard players set #100 num 100
scoreboard players set #150 num 150
scoreboard players set #200 num 200

# Random ticking
scoreboard objectives add pickless.tick_i dummy

# Debugging
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy

# Load
function pickless:bonemeal/load
function pickless:diamond/load
function pickless:replace/load
function pickless:obsidian/load
