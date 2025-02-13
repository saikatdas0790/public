# # Install the Windows Update module
# Install-Module -Name PSWindowsUpdate -Force

# # Import the Windows Update module
# Import-Module PSWindowsUpdate

# # Check for updates
# Get-WindowsUpdate -AcceptAll -Install -AutoReboot

# # Restart the system if updates require a reboot
# Restart-Computer -Force

winget install GitHub.cli
echo "✅ Github CLI Installed"
winget install Google.Chrome
echo "✅ Google Chrome Installed"