# Increment timer
scoreboard players add @s pickless.debris_timer 1

# Tick

scoreboard players operation #pitch pickless.debris_timer = @s pickless.debris_timer
scoreboard players operation #pitch pickless.debris_timer *= #100 pickless.num
scoreboard players operation #pitch pickless.debris_timer /= #max pickless.debris_timer
execute store result storage pickless:tick_diamond pitch float 0.02 run scoreboard players get #pitch pickless.debris_timer

scoreboard players operation #count pickless.debris_timer = @s pickless.debris_timer
scoreboard players operation #count pickless.debris_timer *= #20 pickless.num
scoreboard players operation #count pickless.debris_timer /= #max pickless.debris_timer
execute store result storage pickless:tick_diamond count int 1 run scoreboard players get #count pickless.debris_timer

scoreboard players operation #light pickless.debris_timer = @s pickless.debris_timer
scoreboard players operation #light pickless.debris_timer *= #16 pickless.num
scoreboard players operation #light pickless.debris_timer /= #max pickless.debris_timer
execute store result storage pickless:tick_diamond light int 1 run scoreboard players get #light pickless.debris_timer

function pickless:diamond/tick_near_debris with storage pickless:tick_diamond

# Break debris if necessary
execute if score @s pickless.debris_timer >= #max pickless.debris_timer run execute unless entity @s[tag=broke_debris] run function pickless:diamond/break_debris