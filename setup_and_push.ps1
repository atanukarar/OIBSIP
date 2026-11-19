#!/usr/bin/env pwsh
# ============================================================
# OIBSIP — GitHub Setup & Push Script
# Run this in PowerShell after completing `gh auth login`
# ============================================================

$ErrorActionPreference = "Stop"
$repoName = "OIBSIP"
$localPath = "C:\Users\SAIBAL DAS\.gemini\antigravity\scratch\OIBSIP"
$notebookSrc = "C:\Users\SAIBAL DAS\Downloads\Task_1_Iris_Flower_Classification.ipynb"
$notebookDst = "$localPath\DataScience-Task1-IrisFlowerClassification\Task_1_Iris_Flower_Classification.ipynb"

Write-Host "`n🔐 Step 1: Checking GitHub auth..." -ForegroundColor Cyan
gh auth status

Write-Host "`n📁 Step 2: Copying notebook into repo folder..." -ForegroundColor Cyan
if (Test-Path $notebookSrc) {
    Copy-Item $notebookSrc $notebookDst -Force
    Write-Host "  ✅ Notebook copied." -ForegroundColor Green
} else {
    Write-Host "  ⚠️  Notebook not found at: $notebookSrc" -ForegroundColor Yellow
    Write-Host "     Copy it manually to: $notebookDst"
}

Write-Host "`n🏗️  Step 3: Initialising git repo..." -ForegroundColor Cyan
Set-Location $localPath
git init
git add .
git commit -m "feat: add Task 1 - Iris Flower Classification (Data Science)"

Write-Host "`n☁️  Step 4: Creating GitHub repo and pushing..." -ForegroundColor Cyan
gh repo create $repoName --public --description "OIBSIP Internship Task Submissions - Data Science Track" --source . --remote origin --push

Write-Host "`n✅ Done! Repo live at: https://github.com/atanukarar/OIBSIP" -ForegroundColor Green
Write-Host "   Next steps:" -ForegroundColor Yellow
Write-Host "   1. Record your demo video (title card: Atanu Karar | Data Science | Iris Flower Classification)"
Write-Host "   2. Post on LinkedIn with #oasisinfobyte"
Write-Host "   3. Comment on 2 fellow intern videos"
Write-Host "   4. Submit via the Task Submission Form"
