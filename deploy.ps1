# Deploy pickless datapack to a Minecraft world
# Usage: .\deploy.ps1 -WorldPath "path\to\world"
# Or set MINECRAFT_WORLD environment variable

param(
    [string]$WorldPath = $env:MINECRAFT_WORLD
)

$source = $PSScriptRoot
$deployments = @()

# Add specified world path if provided
if ($WorldPath) {
    $deployments += Join-Path $WorldPath "datapacks\pickless"
}

# Add default Minecraft installation datapacks folder
$defaultMinecraftDatapacks = Join-Path $env:APPDATA ".minecraft\datapacks\pickless"
$deployments += $defaultMinecraftDatapacks

if ($deployments.Count -eq 0) {
    Write-Host "Error: No deployment targets." -ForegroundColor Red
    exit 1
}

# Deploy to all targets
foreach ($destination in $deployments) {
    # Create parent directory if it doesn't exist
    $parentDir = Split-Path $destination -Parent
    if (-not (Test-Path $parentDir)) {
        New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
    }

    # Remove old version if it exists
    if (Test-Path $destination) {
        Remove-Item -Path $destination -Recurse -Force
    }

    # Copy the datapack
    Copy-Item -Path $source -Destination $destination -Recurse -Exclude ".git*", "deploy.ps1", "*.md"

    Write-Host "Datapack deployed successfully to: $destination" -ForegroundColor Green
}
