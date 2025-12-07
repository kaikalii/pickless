scoreboard players set @s pickless.lapis_mined 0

execute if predicate pickless:sneaking run return run execute positioned ~ ~-0.125 ~ run function pickless:lapis/mine_sneaking
function pickless:lapis/mine_standing

execute if score @s pickless.lapis_mined = #1 num run clear @s lapis_lazuli 1