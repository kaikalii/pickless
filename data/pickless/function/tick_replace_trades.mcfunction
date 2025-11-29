# Replace pickaxes in villager trade offers with random tools

function pickless:replace_pickaxe_trade {material:"wooden"}
function pickless:replace_pickaxe_trade {material:"stone"}
function pickless:replace_pickaxe_trade {material:"copper"}
function pickless:replace_pickaxe_trade {material:"iron"}
function pickless:replace_pickaxe_trade {material:"golden"}
function pickless:replace_pickaxe_trade {material:"diamond"}
function pickless:replace_pickaxe_trade {material:"netherite"}

schedule function pickless:tick_replace_trades 1s
