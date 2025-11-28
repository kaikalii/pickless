# Deploy pickless datapack to a Minecraft world
# Usage: .\deploy.ps1 -WorldPath "path\to\world"
# Or set MINECRAFT_WORLD environment variable

param(
    [string]$WorldPath = $env:MINECRAFT_WORLD
)

if (-not $WorldPath) {
    Write-Host "Error: No world path specified." -ForegroundColor Red
    Write-Host "Usage: .\deploy.ps1 -WorldPath 'path\to\world'" -ForegroundColor Yellow
    Write-Host "Or set MINECRAFT_WORLD environment variable" -ForegroundColor Yellow
    exit 1
}

$source = $PSScriptRoot
$destination = Join-Path $WorldPath "datapacks\pickless"

# Remove old version if it exists
if (Test-Path $destination) {
    Remove-Item -Path $destination -Recurse -Force
}

# Copy the datapack
Copy-Item -Path $source -Destination $destination -Recurse -Exclude ".git*", "deploy.ps1", "*.md"

Write-Host "Datapack deployed successfully to: $destination" -ForegroundColor Green
