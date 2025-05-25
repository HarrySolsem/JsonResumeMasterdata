# Define folder path
$folderPath = "C:\Users\harry\source\repos\HarrySolsem\JsonResumeMasterdata\data\en"
$outputFile = "C:\Users\harry\source\repos\HarrySolsem\JsonResumeMasterdata\generated_data\en\jsonresume.json"

# Initialize an empty hash table to store JSON content
$mergedData = @{}

# Get all JSON files in the folder
$files = Get-ChildItem -Path $folderPath -Filter "*.json"

foreach ($file in $files) {
    try {
        # Read JSON file with UTF-8 encoding to prevent corruption
        $jsonContent = Get-Content -Path $file.FullName -Raw -Encoding UTF8 | ConvertFrom-Json
        
        # Merge JSON objects into the hash table
        foreach ($key in $jsonContent.PSObject.Properties.Name) {
            $mergedData[$key] = $jsonContent.$key
        }

    } catch {
        Write-Host "Skipping invalid JSON file: $($file.Name)"
    }
}

# Convert merged data to JSON with UTF-8 encoding and save to file
$mergedJson = $mergedData | ConvertTo-Json -Depth 10
[System.IO.File]::WriteAllText($outputFile, $mergedJson, [System.Text.Encoding]::UTF8)

Write-Host "Merged JSON saved to $outputFile with UTF-8 encoding"