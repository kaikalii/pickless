scoreboard players set @s pickless.neary_lapis 1
scoreboard players add @s pickless.lapis 1
function pickless:lapis/effect
execute if score @s pickless.lapis > #max pickless.lapis run function pickless:lapis/break