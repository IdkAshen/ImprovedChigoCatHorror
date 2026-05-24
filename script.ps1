# 1. Define variables (strings, integers, and arrays)
$ProjectName = "SystemCheck"
$RetryLimit = 3
$Services = @("Spooler", "W32Time", "LanmanWorkstation")

# 2. Get user input for a custom log name
$LogName = Read-Host -Prompt "Enter a name for your log file (e.g., StatusLog)"

# 3. Output a message using string interpolation
Write-Host "`nStarting $ProjectName for $LogName..." -ForegroundColor Cyan

# 4. Loop through an array and use conditional logic
foreach ($ServiceName in $Services) {
    $Status = (Get-Service -Name $ServiceName).Status
    
    if ($Status -eq "Running") {
        Write-Host "Service '$ServiceName' is currently $Status." -ForegroundColor Green
    } else {
        Write-Host "Warning: Service '$ServiceName' is $Status." -ForegroundColor Yellow
        Write-Host "Attempting to verify status... (Limit: $RetryLimit)"
    }
}

Write-Host "`nTask completed." -ForegroundColor Cyan
