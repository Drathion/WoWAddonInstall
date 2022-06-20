# WoWAddonInstall
Place all zip folders for addons downloaded from various addon websites and this script will extract and copy them to your WoW Addon Directory. Lazy Mode!

In order to use this script, edit the $downloadPath and $wowPath variables to match your setup

$downloadPath = the full path to the folder that you are going to store the zip files downloaded from CurseForge, etc. (ie. C:\Users\You\Downloads\WoWAddonDownloads)
$wowPath = the full path to the folder that your WoW Addons are stored (ie. C:\Games\World of Warcraft\_retail_\Interface\AddOns")

I recommend trying not to use special characters in these paths and filenames where possible. The script accounts for [] characters now because Powershell uses them for special things. If you run into any issues, see if renaming the file works, and if it does, feel free to let me know or create an issue and I'll try to create some code to handle it.

Finally, all this script does it extract and copy files, so you can use it for anything that requires you to do that (including WoW Classic!). 
