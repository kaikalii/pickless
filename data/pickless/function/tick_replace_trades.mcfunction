# Replace pickaxes in villager trade offers with random tools

function pickless:for_each_material {function:"replace_pickaxe_trade"}

schedule function pickless:tick_replace_trades 1s
