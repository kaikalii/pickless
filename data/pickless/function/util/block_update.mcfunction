scoreboard players set #updated pickless.block 0
function pickless:util/block_update_with {block:air}
execute if score #updated pickless.block = #1 num run return run function pickless:util/do_nothing
function pickless:util/block_update_with {block:stone}
execute if score #updated pickless.block = #1 num run return run function pickless:util/do_nothing
function pickless:util/block_update_with {block:deepslate}