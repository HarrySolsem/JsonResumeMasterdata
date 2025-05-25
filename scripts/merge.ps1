# Define folder path
$folderPath = "C:\Users\harry\source\repos\HarrySolsem\JsonResumeMasterdata\data"
$outputFile = "C:\Users\harry\source\repos\HarrySolsem\JsonResumeMasterdata\merged_data.json"

# Initialize an empty hash table to store JSON content
$mergedData = @{}

# Get all JSON files in the folder
$files = Get-ChildItem -Path $folderPath -Filter "*.json"

foreach ($file in $files) {
    try {
        # Read and parse JSON content
        $jsonContent = Get-Content $file.FullName -Raw | ConvertFrom-Json
        $mergedData[$file.Name] = $jsonContent
    } catch {
        Write-Host "Skipping invalid JSON file: $($file.Name)"
    }
}

# Convert merged data to JSON and save to file
$mergedJson = $mergedData | ConvertTo-Json -Depth 10
$mergedJson | Set-Content -Path $outputFile -Encoding UTF8

Write-Host "Merged JSON saved to $outputFile"