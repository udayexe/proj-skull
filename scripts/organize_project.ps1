# Create project structure
$dirs = @(
    "src",
    "include",
    "scripts",
    "models",
    "cmake"
)

foreach ($dir in $dirs) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir
        Write-Host "Created directory: $dir" -ForegroundColor Green
    }
}

# Move source files to src directory
if (Test-Path "*.cpp") {
    Move-Item -Path "*.cpp" -Destination "src\" -Force
    Write-Host "Moved .cpp files to src/" -ForegroundColor Green
}

if (Test-Path "*.h") {
    Move-Item -Path "*.h" -Destination "include\" -Force
    Write-Host "Moved .h files to include/" -ForegroundColor Green
}

# Move scripts to scripts directory
if (Test-Path "*.ps1") {
    Move-Item -Path "*.ps1" -Destination "scripts\" -Force -Exclude "organize_project.ps1"
    Write-Host "Moved PowerShell scripts to scripts/" -ForegroundColor Green
}

# Create a basic directory structure file
@"
proj-skull/
├── src/               # Source files
├── include/           # Header files
├── scripts/           # Build and utility scripts
├── models/           # Model files
├── cmake/            # CMake modules
├── CMakeLists.txt    # Main CMake configuration
├── .gitignore        # Git ignore file
└── README.md         # Project documentation
"@ | Out-File -FilePath "directory_structure.txt" -Encoding utf8 