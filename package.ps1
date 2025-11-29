# Package pickless datapack as a versioned zip file
# Usage: .\package.ps1 [major|minor|patch]
# Default: patch (0.0.1 -> 0.0.2)

param(
    [ValidateSet('major', 'minor', 'patch')]
    [string]$Increment = 'patch'
)

$versionFile = Join-Path $PSScriptRoot "version.txt"
$currentVersion = Get-Content $versionFile -Raw
$currentVersion = $currentVersion.Trim()

Write-Host "Using version: $currentVersion" -ForegroundColor Cyan

# Create zip file
$zipName = "pickless-$currentVersion.zip"
$zipPath = Join-Path $env:USERPROFILE "Downloads\$zipName"

# Remove old zip if exists
if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

# Create temporary directory for packaging
$tempDir = Join-Path $env:TEMP "pickless-package"
if (Test-Path $tempDir) {
    Remove-Item $tempDir -Recurse -Force
}
New-Item -ItemType Directory -Path $tempDir | Out-Null

# Copy files to temp directory (exclude git, scripts, version file)
Get-ChildItem $PSScriptRoot -Exclude ".git*", "deploy.ps1", "package.ps1", "version.txt", "releases", "*.md" | 
    Copy-Item -Destination $tempDir -Recurse -Force

# Create the zip
Compress-Archive -Path "$tempDir\*" -DestinationPath $zipPath -CompressionLevel Optimal -Force

# Cleanup temp directory
Remove-Item $tempDir -Recurse -Force

Write-Host "Package created: $zipPath" -ForegroundColor Green

# Parse version for incrementing
$parts = $currentVersion -split '\.'
$major = [int]$parts[0]
$minor = [int]$parts[1]
$patch = [int]$parts[2]

# Increment version
switch ($Increment) {
    'major' {
        $major++
        $minor = 0
        $patch = 0
    }
    'minor' {
        $minor++
        $patch = 0
    }
    'patch' {
        $patch++
    }
}

$newVersion = "$major.$minor.$patch"

# Update version file
Set-Content -Path $versionFile -Value $newVersion -NoNewline

Write-Host "Version incremented: $currentVersion -> $newVersion" -ForegroundColor Cyan
