# Replace pickaxe item entities on the ground with random tools

function pickless:replace_pickaxe_drop {material:"wooden"}
function pickless:replace_pickaxe_drop {material:"stone"}
function pickless:replace_pickaxe_drop {material:"copper"}
function pickless:replace_pickaxe_drop {material:"iron"}
function pickless:replace_pickaxe_drop {material:"golden"}
function pickless:replace_pickaxe_drop {material:"diamond"}
function pickless:replace_pickaxe_drop {material:"netherite"}

schedule function pickless:tick_replace_drops 1t
