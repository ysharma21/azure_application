
Write-Host ""
Write-Host "Loading azd .env file from current environment"
Write-Host ""

$output = azd env get-values

foreach ($line in $output) {
  if (!$line.Contains('=')) {
    continue
  }

  $name, $value = $line.Split("=")
  $value = $value -replace '^\"|\"$'
  [Environment]::SetEnvironmentVariable($name, $value)
  Write-Host "Environment variables: $name=$value"
}

Write-Host "Environment variables set."
# to run use following command:
# set POWERSHELL_TELEMETRY_OPTOUT=1
# pwsh.exe -File .\infra\deploy.ps1
# Get the region and subscription ID from the .env file
#
$region = Get-Content -Path ".env" | Where-Object { $_ -like "AZURE_LOCATION=*" } | ForEach-Object { $_ -replace "AZURE_LOCATION=", "" }
$subscriptionId = Get-Content -Path ".env" | Where-Object { $_ -like "AZURE_SUBSCRIPTION_ID=*" } | ForEach-Object { $_ -replace "AZURE_SUBSCRIPTION_ID=", "" }


# Deploy the resources using the main.bicep file
az deployment sub create --location $region --template-file ".\infra\main.bicep" --parameters ".\infra\main.parameters.json"  --subscription $subscriptionId

# Run the roles.ps1 script to create the required role assignments
".\roles.ps1"