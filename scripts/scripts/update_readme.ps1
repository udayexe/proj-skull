@"
# Skeleton Tracking Project

Real-time skeleton tracking implementation using PaddlePaddle 2.6 and ONNX Runtime.

## Project Structure

\`\`\`
proj-skull/
├── src/               # Source files
├── include/           # Header files
├── scripts/           # Build and utility scripts
├── models/           # Model files
├── cmake/            # CMake modules
├── CMakeLists.txt    # Main CMake configuration
├── .gitignore        # Git ignore file
└── README.md         # Project documentation
\`\`\`

## Prerequisites

- Visual Studio 2022
- CMake 3.20+
- CUDA Toolkit 11.x
- cuDNN 8.x
- PaddlePaddle 2.6
- OpenCV 4.10.0
- Qt 6.8.2
- ONNX Runtime

## Build Instructions

1. Install dependencies:
   - Install [Visual Studio 2022](https://visualstudio.microsoft.com/vs/)
   - Install [CUDA Toolkit 11.x](https://developer.nvidia.com/cuda-toolkit)
   - Install [cuDNN 8.x](https://developer.nvidia.com/cudnn)
   - Install [Qt 6.8.2](https://www.qt.io/download)

2. Clone the repository:
\`\`\`bash
git clone https://github.com/udayexe/proj-skull.git
cd proj-skull
\`\`\`

3. Download required models:
\`\`\`powershell
.\\scripts\\download_models.ps1
\`\`\`

4. Build the project:
\`\`\`powershell
mkdir build
cd build
cmake ..
cmake --build .
\`\`\`

5. Copy required DLLs:
\`\`\`powershell
..\\scripts\\copy_all_dlls.ps1
\`\`\`

## Models

The project uses:
- YOLOv5s for detection (ONNX format)
- Lite-HRNet for pose estimation (PaddlePaddle format)

## Scripts

- \`copy_all_dlls.ps1\`: Copies required DLLs to build directory
- \`download_models.ps1\`: Downloads and extracts model files
- \`analyze_errors.ps1\`: Helps diagnose runtime issues
- \`verify_paths.ps1\`: Verifies all required files exist

## License

[Your chosen license]
"@ | Out-File -FilePath "README.md" -Encoding utf8 