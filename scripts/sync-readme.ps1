# PowerShell script to manually sync README files from app repository to docs repository

# Define paths
$appRepoPath = "..\fastAPI-project-app"
$docsRepoPath = "."

# Check if app repository exists
if (-not (Test-Path $appRepoPath)) {
    Write-Error "App repository not found at $appRepoPath"
    exit 1
}

# Create necessary directories
$appDocsPath = Join-Path $docsRepoPath "docs\app"
$frontendDocsPath = Join-Path $appDocsPath "frontend"
$backendDocsPath = Join-Path $appDocsPath "backend"

if (-not (Test-Path $appDocsPath)) {
    New-Item -ItemType Directory -Path $appDocsPath -Force
}

if (-not (Test-Path $frontendDocsPath)) {
    New-Item -ItemType Directory -Path $frontendDocsPath -Force
}

if (-not (Test-Path $backendDocsPath)) {
    New-Item -ItemType Directory -Path $backendDocsPath -Force
}

# Copy README files
$appReadmePath = Join-Path $appRepoPath "README.md"
$appDocsReadmePath = Join-Path $appDocsPath "README.md"

if (Test-Path $appReadmePath) {
    Write-Host "Copying app README from $appReadmePath to $appDocsReadmePath"
    Copy-Item -Path $appReadmePath -Destination $appDocsReadmePath -Force
}

# Copy frontend README if it exists
$frontendReadmePath = Join-Path $appRepoPath "frontend\README.md"
$frontendDocsReadmePath = Join-Path $frontendDocsPath "README.md"

if (Test-Path $frontendReadmePath) {
    Write-Host "Copying frontend README from $frontendReadmePath to $frontendDocsReadmePath"
    Copy-Item -Path $frontendReadmePath -Destination $frontendDocsReadmePath -Force
}

# Copy backend README if it exists
$backendReadmePath = Join-Path $appRepoPath "backend\README.md"
$backendDocsReadmePath = Join-Path $backendDocsPath "README.md"

if (Test-Path $backendReadmePath) {
    Write-Host "Copying backend README from $backendReadmePath to $backendDocsReadmePath"
    Copy-Item -Path $backendReadmePath -Destination $backendDocsReadmePath -Force
}

Write-Host "README files synchronized successfully!"
