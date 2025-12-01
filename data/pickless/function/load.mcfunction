# Number literals
scoreboard objectives add pickless.num dummy
scoreboard players set #-1 pickless.num -1
scoreboard players set #0 pickless.num 0
scoreboard players set #1 pickless.num 1
scoreboard players set #2 pickless.num 2
scoreboard players set #10 pickless.num 10
scoreboard players set #15 pickless.num 15
scoreboard players set #16 pickless.num 16
scoreboard players set #20 pickless.num 20
scoreboard players set #80 pickless.num 80
scoreboard players set #90 pickless.num 90
scoreboard players set #100 pickless.num 100

# Debugging
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy

# Load
function pickless:bonemeal/load
function pickless:diamond/load
function pickless:replace/load
