# Change directory to place where downloads from CurseForge will be located
$downloadPath = "C:\Users\Drath\Downloads\WoWAddons"
# Change directory to place where your addons are located
$wowPath = "C:\Games\World of Warcraft\_retail_\Interface\AddOns"

# Read each zip file and extract it to $wowPath directory. This will overwrite any conflicts.
foreach($sourceFile in (Get-ChildItem -Path $downloadPath -filter '*.zip'))
{
    # Brackets mess with our code because brackets are special characters to Powershell
    # Here we are detecting brackets and if found removing them from filenames.
    if ($sourceFile -match "\[" -or $sourceFile -match "\]")
    {
       # Remove any detected brackets from the filename
       $sourceFile = $sourceFile -replace "\["
       $sourceFile = $sourceFile -replace "\]"
    }

    # Unzip the compressed folder and extract it to the WoW Addons directory stored in $wowPath
    Expand-Archive -LiteralPath "$downloadPath\$sourceFile" -DestinationPath $wowPath -Force

    # Clean up and delete zip files after complete. They are no longer needed.
    remove-item "$downloadPath\$sourceFile" -Force
}