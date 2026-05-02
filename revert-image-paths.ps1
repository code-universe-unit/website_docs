# Revert image paths back to root for custom domain
$files = Get-ChildItem -Path "docs\mlo\*.md" -File

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Replace /website_docs/images/ back to /images/
    $newContent = $content -replace 'src="/website_docs/images/', 'src="/images/'
    
    Set-Content -Path $file.FullName -Value $newContent -NoNewline
    Write-Host "Reverted: $($file.Name)"
}

Write-Host "`nDone! Image paths reverted for custom domain."
