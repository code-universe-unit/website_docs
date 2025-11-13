# Script to download all images from GitHub to local storage

# Create directories
New-Item -ItemType Directory -Path "docs\public\images\mlo\logistic-company" -Force | Out-Null
New-Item -ItemType Directory -Path "docs\public\images\mlo\mc-clubhouse" -Force | Out-Null

Write-Host "Starting image download..." -ForegroundColor Green

# Logistic Company V2 images
$logisticImages = @(
    # Garage Sets
    @{ url = "https://github.com/user-attachments/assets/f2a676a4-6361-411d-b5e5-61255e6d6ed6"; name = "garage-set-1.png" },
    @{ url = "https://github.com/user-attachments/assets/bacee79c-d7d6-4ff8-a74e-677f795414f2"; name = "garage-set-2.png" },
    @{ url = "https://github.com/user-attachments/assets/af190c8b-9bb3-421b-bf9f-1cdeb9a7024e"; name = "garage-set-3.png" },
    @{ url = "https://github.com/user-attachments/assets/05fa1586-eaf3-4108-81a7-a6f99fbd456b"; name = "garage-set-4.png" },
    @{ url = "https://github.com/user-attachments/assets/67011c30-0ddc-4008-95f3-0115d46533e7"; name = "garage-set-5.png" },
    # Textures
    @{ url = "https://github.com/user-attachments/assets/1b247de5-388e-4958-ac0c-f94851d82275"; name = "texture-1.png" },
    @{ url = "https://github.com/user-attachments/assets/fc814b06-5b50-4085-8745-831487e39345"; name = "texture-2.png" },
    @{ url = "https://github.com/user-attachments/assets/77852cc7-5c9d-4d32-8f25-064204e3b90f"; name = "texture-3.png" },
    @{ url = "https://github.com/user-attachments/assets/74d1f009-7fd0-416f-9b5c-08c65f714acc"; name = "texture-4.png" },
    @{ url = "https://github.com/user-attachments/assets/7d3f4e0a-f015-4c0e-8a74-ef08139a7704"; name = "texture-5.png" },
    # Warehouse Pallets
    @{ url = "https://github.com/user-attachments/assets/6c4e68cb-7852-435d-8f1f-36b54266850a"; name = "prop-pallet-1.png" },
    @{ url = "https://github.com/user-attachments/assets/a0a40f42-b404-4713-8966-5f126721d667"; name = "prop-pallet-2.png" },
    @{ url = "https://github.com/user-attachments/assets/7d6221e5-7983-49d6-bbdd-01c29c89d773"; name = "prop-pallet-3.png" },
    @{ url = "https://github.com/user-attachments/assets/89575cf3-f403-4d1f-9666-87c175f53d4c"; name = "prop-pallet-4.png" },
    @{ url = "https://github.com/user-attachments/assets/d97b2bac-7d26-422b-b753-ef8f192124b0"; name = "prop-pallet-5.png" },
    @{ url = "https://github.com/user-attachments/assets/2d2892bd-61f8-46ab-a058-3b1746a87a4d"; name = "prop-pallet-6.png" },
    @{ url = "https://github.com/user-attachments/assets/3fea1f4c-9e2b-4d2c-afa2-f19da7ace37c"; name = "prop-pallet-7.png" },
    @{ url = "https://github.com/user-attachments/assets/472a8175-f440-4731-b738-04827f56b96f"; name = "prop-pallet-8.png" },
    @{ url = "https://github.com/user-attachments/assets/3a19a399-f9a8-4a53-950d-1f9caedd64f3"; name = "prop-pallet-9.png" },
    # Seats
    @{ url = "https://github.com/user-attachments/assets/41ae27af-55f3-405d-98be-54e3ec86d57b"; name = "prop-seat-1.png" },
    @{ url = "https://github.com/user-attachments/assets/34199116-1df9-4ef8-b721-5ab2d7f04847"; name = "prop-seat-2.png" },
    @{ url = "https://github.com/user-attachments/assets/e294ee2b-7158-4ddf-b5c3-f869db3d646d"; name = "prop-seat-3.png" },
    @{ url = "https://github.com/user-attachments/assets/5d7266bf-add2-445c-a806-feaf165b5440"; name = "prop-seat-4.png" },
    @{ url = "https://github.com/user-attachments/assets/3e69748e-c133-4ee4-8097-097524a5c3ad"; name = "prop-seat-5.png" },
    @{ url = "https://github.com/user-attachments/assets/5976f212-a67d-43fd-ba19-1c2b984168e3"; name = "prop-seat-6.png" },
    @{ url = "https://github.com/user-attachments/assets/a462ebb1-4cf6-40ca-a2c5-4ac69f1dd234"; name = "prop-seat-7.png" }
)

# MC Clubhouse images
$clubhouseImages = @(
    # Textures
    @{ url = "https://github.com/user-attachments/assets/0efb2e18-4c7d-416f-bfa1-9f09e58c6047"; name = "gc_bclub_exterior.png" },
    @{ url = "https://github.com/user-attachments/assets/001b3c82-3548-4867-81c7-929101bce388"; name = "gc_bclub_exterior1.png" },
    @{ url = "https://github.com/user-attachments/assets/46ae2231-e3da-4e0b-9a6e-ad2efc91c8c2"; name = "gc_bclub_art.png" },
    @{ url = "https://github.com/user-attachments/assets/03314307-26da-45bc-a434-a2e5b92c761b"; name = "gc_bclub_int.png" },
    @{ url = "https://github.com/user-attachments/assets/40f7e48c-3aad-448b-b45e-4270d87ebb1c"; name = "gc_bclub_int_2.png" },
    @{ url = "https://github.com/user-attachments/assets/77a712bf-005f-4812-8c9a-eb6a6e667631"; name = "gc_bclub_int_3.png" },
    @{ url = "https://github.com/user-attachments/assets/1805c7b7-b062-4f69-a1b3-37e81f2c8be9"; name = "gc_garage_art_02.png" },
    @{ url = "https://github.com/user-attachments/assets/edc17167-38de-425f-8a3a-0b524ba268b3"; name = "gc_garage_art_01.png" },
    @{ url = "https://github.com/user-attachments/assets/a4f176aa-1113-467f-9b8b-ce2773ef6358"; name = "gc_garage_art_01_1.png" },
    @{ url = "https://github.com/user-attachments/assets/5d83c504-fcd3-4d6d-959c-79b39be4d001"; name = "gc_garage_posters_01.png" },
    @{ url = "https://github.com/user-attachments/assets/ba1b57e9-fab5-4b21-8ebf-4fb7719271d7"; name = "gc_garage_posters_01_1.png" },
    @{ url = "https://github.com/user-attachments/assets/805ec755-b94e-4516-ab66-cb43a07480a0"; name = "gc_garage_posters_01_2.png" },
    @{ url = "https://github.com/user-attachments/assets/dc95884e-1ea2-4d2d-a689-2cdb84de62a0"; name = "gc_bclub_wall_graffiti_01.png" },
    @{ url = "https://github.com/user-attachments/assets/043529ef-b82b-4ffa-abbd-1b9f7930aa9a"; name = "gc_bclub_wall_graffiti_01_2.png" },
    @{ url = "https://github.com/user-attachments/assets/8174114f-2d77-4948-9273-c88daf192245"; name = "gc_bclub_table_planning.png" },
    @{ url = "https://github.com/user-attachments/assets/e76f8c80-f33c-41c8-97e5-f536f3302066"; name = "gc_garage_posters_03.png" },
    @{ url = "https://github.com/user-attachments/assets/8c90753d-3a53-41f3-b2c9-b1aaec79cba1"; name = "wallpaper_txt_check.png" },
    @{ url = "https://github.com/user-attachments/assets/6031ec30-b959-4b0d-acc8-93867167c884"; name = "gc_garage_posters_04.png" },
    # Seats
    @{ url = "https://github.com/user-attachments/assets/550b0adf-8994-46f7-850f-f3752b55f646"; name = "seat-1.png" },
    @{ url = "https://github.com/user-attachments/assets/19530797-844d-42ae-80fc-1941b53ec388"; name = "seat-2.png" },
    @{ url = "https://github.com/user-attachments/assets/157d77ad-b151-41ca-af63-d52627cdc9f5"; name = "seat-3.png" },
    @{ url = "https://github.com/user-attachments/assets/c8168f24-7293-456e-b8e7-b446bb3ee994"; name = "seat-4.png" },
    @{ url = "https://github.com/user-attachments/assets/370e9f14-569c-4c27-bfd5-1bd3c3764f6b"; name = "seat-5.png" },
    @{ url = "https://github.com/user-attachments/assets/75314754-6702-412c-9a36-297b06bbee38"; name = "seat-6.png" },
    @{ url = "https://github.com/user-attachments/assets/de8581a2-2e42-4b47-9b91-e18e7c9b483e"; name = "seat-7.png" }
)

# Download Logistic Company images
Write-Host "`nDownloading Logistic Company V2 images..." -ForegroundColor Cyan
foreach ($img in $logisticImages) {
    $outputPath = "docs\public\images\mlo\logistic-company\$($img.name)"
    Write-Host "  Downloading $($img.name)..." -NoNewline
    try {
        Invoke-WebRequest -Uri $img.url -OutFile $outputPath -UseBasicParsing -UserAgent "Mozilla/5.0"
        Write-Host " ✓" -ForegroundColor Green
    } catch {
        Write-Host " ✗ Failed: $_" -ForegroundColor Red
    }
}

# Download MC Clubhouse images
Write-Host "`nDownloading MC Clubhouse images..." -ForegroundColor Cyan
foreach ($img in $clubhouseImages) {
    $outputPath = "docs\public\images\mlo\mc-clubhouse\$($img.name)"
    Write-Host "  Downloading $($img.name)..." -NoNewline
    try {
        Invoke-WebRequest -Uri $img.url -OutFile $outputPath -UseBasicParsing -UserAgent "Mozilla/5.0"
        Write-Host " ✓" -ForegroundColor Green
    } catch {
        Write-Host " ✗ Failed: $_" -ForegroundColor Red
    }
}

Write-Host "`nAll images downloaded successfully!" -ForegroundColor Green
Write-Host "`nNext step: Update markdown files to use local image paths" -ForegroundColor Yellow
