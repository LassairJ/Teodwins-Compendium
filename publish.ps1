# 1. Sync Obsidian to Quartz Content folder
# Replace the first path with your actual Obsidian Vault location
$ObsidianVault = "C:\Users\GenuineFaux\Documents\Obsidian Vaults\Teodwin Campaign"
$QuartzContent = ".\content"

Write-Host "Syncing notes from Obsidian..." -ForegroundColor Cyan
robocopy $ObsidianVault $QuartzContent /MIR /XJD /R:0 /W:0

# 2. Push to GitHub
Write-Host "Pushing to the Web..." -ForegroundColor Green
git add .
git commit -m "Session Update: $(Get-Date -Format 'yyyy-MM-dd')"
git push origin v4

Write-Host "Done! Your notes will be live at teodwin.lassair.me in ~2 minutes." -ForegroundColor Yellow
pause