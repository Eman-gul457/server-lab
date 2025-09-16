# Script: create_user_and_restart_iis.ps1
# Purpose: Create a local user and restart IIS service

# Prompt for password securely (avoids hardcoding)
$password = Read-Host "Enter password for new user" -AsSecureString

# Create new user
New-LocalUser -Name "projectuser" -Password $password -FullName "Project User" -PasswordNeverExpires $true

# Add to Administrators group
Add-LocalGroupMember -Group "Administrators" -Member "projectuser"

# Restart IIS service
Restart-Service W3SVC

Write-Host "✅ User 'projectuser' created and IIS restarted successfully."
