# Generic handler that calls a function for each material type
# Expects: $(f) - the function to call with {material:"..."} parameter

$function pickless:$(f) {material:"wooden"}
$function pickless:$(f) {material:"stone"}
$function pickless:$(f) {material:"copper"}
$function pickless:$(f) {material:"iron"}
$function pickless:$(f) {material:"golden"}
$function pickless:$(f) {material:"diamond"}
$function pickless:$(f) {material:"netherite"}
