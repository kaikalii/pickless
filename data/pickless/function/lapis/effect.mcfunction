scoreboard players operation #count pickless.lapis = @s pickless.lapis
scoreboard players operation #count pickless.lapis *= #4 num
scoreboard players operation #count pickless.lapis /= #max pickless.lapis
execute store result storage pickless:tick_lapis count int 1 run scoreboard players get #count pickless.lapis


execute store result score #pitch pickless.lapis run random value 0..10
scoreboard players operation #pitch pickless.lapis += @s pickless.lapis
execute store result storage pickless:tick_lapis pitch float 0.033333333333 run scoreboard players get #pitch pickless.lapis

function pickless:lapis/tick_effect with storage pickless:tick_lapis
