setblock ~ ~ ~ air destroy
scoreboard players set @s pickless.lapis_mined 1

execute store result score #pitch pickless.lapis run random value 0..20
execute store result storage pickless:tick_lapis pitch float 0.1 run scoreboard players get #pitch pickless.lapis
data modify storage pickless:tick_lapis count set value 1
function pickless:lapis/tick_effect with storage pickless:tick_lapis