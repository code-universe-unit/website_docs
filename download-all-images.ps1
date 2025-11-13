# Download all images from both documentation pages

# Create directories
New-Item -ItemType Directory -Path "docs\public\images\mlo\logistic-company" -Force | Out-Null
New-Item -ItemType Directory -Path "docs\public\images\mlo\mc-clubhouse" -Force | Out-Null

Write-Host "Downloading all images..." -ForegroundColor Green

# Extract URLs from Logistic Company V2
Write-Host "`nExtracting URLs from Logistic Company V2..." -ForegroundColor Cyan
$logisticUrls = @(
    "https://github.com/user-attachments/assets/f2a676a4-6361-411d-b5e5-61255e6d6ed6",
    "https://github.com/user-attachments/assets/bacee79c-d7d6-4ff8-a74e-677f795414f2",
    "https://github.com/user-attachments/assets/af190c8b-9bb3-421b-bf9f-1cdeb9a7024e",
    "https://github.com/user-attachments/assets/05fa1586-eaf3-4108-81a7-a6f99fbd456b",
    "https://github.com/user-attachments/assets/67011c30-0ddc-4008-95f3-0115d46533e7",
    "https://github.com/user-attachments/assets/1b247de5-388e-4958-ac0c-f94851d82275",
    "https://github.com/user-attachments/assets/fc814b06-5b50-4085-8745-831487e39345",
    "https://github.com/user-attachments/assets/77852cc7-5c9d-4d32-8f25-064204e3b90f",
    "https://github.com/user-attachments/assets/74d1f009-7fd0-416f-9b5c-08c65f714acc",
    "https://github.com/user-attachments/assets/7d3f4e0a-f015-4c0e-8a74-ef08139a7704",
    "https://github.com/user-attachments/assets/6c4e68cb-7852-435d-8f1f-36b54266850a",
    "https://github.com/user-attachments/assets/a0a40f42-b404-4713-8966-5f126721d667",
    "https://github.com/user-attachments/assets/7d6221e5-7983-49d6-bbdd-01c29c89d773",
    "https://github.com/user-attachments/assets/89575cf3-f403-4d1f-9666-87c175f53d4c",
    "https://github.com/user-attachments/assets/d97b2bac-7d26-422b-b753-ef8f192124b0",
    "https://github.com/user-attachments/assets/2d2892bd-61f8-46ab-a058-3b1746a87a4d",
    "https://github.com/user-attachments/assets/3fea1f4c-9e2b-4d2c-afa2-f19da7ace37c",
    "https://github.com/user-attachments/assets/472a8175-f440-4731-b738-04827f56b96f",
    "https://github.com/user-attachments/assets/3a19a399-f9a8-4a53-950d-1f9caedd64f3",
    "https://github.com/user-attachments/assets/41ae27af-55f3-405d-98be-54e3ec86d57b",
    "https://github.com/user-attachments/assets/34199116-1df9-4ef8-b721-5ab2d7f04847",
    "https://github.com/user-attachments/assets/e294ee2b-7158-4ddf-b5c3-f869db3d646d",
    "https://github.com/user-attachments/assets/5d7266bf-add2-445c-a806-feaf165b5440",
    "https://github.com/user-attachments/assets/3e69748e-c133-4ee4-8097-097524a5c3ad",
    "https://github.com/user-attachments/assets/5976f212-a67d-43fd-ba19-1c2b984168e3",
    "https://github.com/user-attachments/assets/a462ebb1-4cf6-40ca-a2c5-4ac69f1dd234"
)

$counter = 1
foreach ($url in $logisticUrls) {
    $filename = "image-$counter.png"
    $outputPath = "docs\public\images\mlo\logistic-company\$filename"
    Write-Host "  [$counter/$($logisticUrls.Count)] Downloading..." -NoNewline
    try {
        Invoke-WebRequest -Uri $url -OutFile $outputPath -UseBasicParsing -UserAgent "Mozilla/5.0" -ErrorAction Stop
        Write-Host " ✓" -ForegroundColor Green
    } catch {
        Write-Host " ✗ Failed" -ForegroundColor Red
    }
    $counter++
}

# Extract URLs from MC Clubhouse
Write-Host "`nExtracting URLs from MC Clubhouse..." -ForegroundColor Cyan
$clubhouseUrls = @(
    "https://github.com/user-attachments/assets/0efb2e18-4c7d-416f-bfa1-9f09e58c6047",
    "https://github.com/user-attachments/assets/001b3c82-3548-4867-81c7-929101bce388",
    "https://github.com/user-attachments/assets/46ae2231-e3da-4e0b-9a6e-ad2efc91c8c2",
    "https://github.com/user-attachments/assets/03314307-26da-45bc-a434-a2e5b92c761b",
    "https://github.com/user-attachments/assets/40f7e48c-3aad-448b-b45e-4270d87ebb1c",
    "https://github.com/user-attachments/assets/77a712bf-005f-4812-8c9a-eb6a6e667631",
    "https://github.com/user-attachments/assets/1805c7b7-b062-4f69-a1b3-37e81f2c8be9",
    "https://github.com/user-attachments/assets/edc17167-38de-425f-8a3a-0b524ba268b3",
    "https://github.com/user-attachments/assets/a4f176aa-1113-467f-9b8b-ce2773ef6358",
    "https://github.com/user-attachments/assets/5d83c504-fcd3-4d6d-959c-79b39be4d001",
    "https://github.com/user-attachments/assets/ba1b57e9-fab5-4b21-8ebf-4fb7719271d7",
    "https://github.com/user-attachments/assets/805ec755-b94e-4516-ab66-cb43a07480a0",
    "https://github.com/user-attachments/assets/dc95884e-1ea2-4d2d-a689-2cdb84de62a0",
    "https://github.com/user-attachments/assets/043529ef-b82b-4ffa-abbd-1b9f7930aa9a",
    "https://github.com/user-attachments/assets/8174114f-2d77-4948-9273-c88daf192245",
    "https://github.com/user-attachments/assets/e76f8c80-f33c-41c8-97e5-f536f3302066",
    "https://github.com/user-attachments/assets/8c90753d-3a53-41f3-b2c9-b1aaec79cba1",
    "https://github.com/user-attachments/assets/6031ec30-b959-4b0d-acc8-93867167c884",
    "https://github.com/user-attachments/assets/550b0adf-8994-46f7-850f-f3752b55f646",
    "https://github.com/user-attachments/assets/19530797-844d-42ae-80fc-1941b53ec388",
    "https://github.com/user-attachments/assets/157d77ad-b151-41ca-af63-d52627cdc9f5",
    "https://github.com/user-attachments/assets/c8168f24-7293-456e-b8e7-b446bb3ee994",
    "https://github.com/user-attachments/assets/370e9f14-569c-4c27-bfd5-1bd3c3764f6b",
    "https://github.com/user-attachments/assets/75314754-6702-412c-9a36-297b06bbee38",
    "https://github.com/user-attachments/assets/de8581a2-2e42-4b47-9b91-e18e7c9b483e"
)

$counter = 1
foreach ($url in $clubhouseUrls) {
    $filename = "image-$counter.png"
    $outputPath = "docs\public\images\mlo\mc-clubhouse\$filename"
    Write-Host "  [$counter/$($clubhouseUrls.Count)] Downloading..." -NoNewline
    try {
        Invoke-WebRequest -Uri $url -OutFile $outputPath -UseBasicParsing -UserAgent "Mozilla/5.0" -ErrorAction Stop
        Write-Host " ✓" -ForegroundColor Green
    } catch {
        Write-Host " ✗ Failed" -ForegroundColor Red
    }
    $counter++
}

Write-Host "`nAll images downloaded!" -ForegroundColor Green
Write-Host "Logistic Company: $($logisticUrls.Count) images" -ForegroundColor Cyan
Write-Host "MC Clubhouse: $($clubhouseUrls.Count) images" -ForegroundColor Cyan
