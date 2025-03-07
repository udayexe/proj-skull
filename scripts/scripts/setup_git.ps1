# Run the gitignore script first
.\scripts\create_gitignore.ps1
.\scripts\create_readme.ps1

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Skeleton tracking project"

# Set up remote and push
git remote remove origin
git remote add origin https://github.com/udayexe/proj-skull.git
git branch -M main

# Force push (only because this is a new repository)
git push -f origin main 