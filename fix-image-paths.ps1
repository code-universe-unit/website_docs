# Fix image paths for GitHub Pages base path
$files = Get-ChildItem -Path "docs\mlo\*.md" -File

foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw
    
    # Replace /images/ with relative path from docs/mlo/ to docs/public/images/
    # In VitePress, public files are served from root, so we need to use base path
    $newContent = $content -replace 'src="/images/', 'src="/website_docs/images/'
    
    Set-Content -Path $file.FullName -Value $newContent -NoNewline
    Write-Host "Fixed: $($file.Name)"
}

Write-Host "`nDone! Image paths updated."
