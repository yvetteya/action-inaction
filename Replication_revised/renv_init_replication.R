# Title: R Environment Setup with renv
# Date: 9/18/2024
# 
# Summary:
# This script initializes the R environment for the project using renv, ensuring that
# all package dependencies are managed consistently. It installs renv if it's not 
# already installed, initializes a new environment, and creates a snapshot to lock 
# the current package versions. If the environment already exists, it can be restored 
# to ensure reproducibility across different systems.
#
# Instructions:
# 1. Run this script once when setting up the project.
# 2. Use renv::snapshot() to update the lockfile after adding new packages.
# 3. Use renv::restore() to reinstall packages from the renv.lock file when needed.

# Initialize renv for package management
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

# Initialize or restore the renv environment
# This will install all required packages from the renv.lock file
renv::init()    # Initializes the project

# Optionally, you can restore an existing renv environment if renv.lock exists
# renv::restore()   # Uncomment to restore packages from lockfile

# Take a snapshot of the environment after setting up
renv::snapshot()
